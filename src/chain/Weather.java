/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chain;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Scanner;
import org.json.*;

public class Weather {

	public static JSONObject contactAPIByCity(String city) throws MalformedURLException, IOException, JSONException {
		String inline = "";
		URL url = new URL("http://api.openweathermap.org/data/2.5/weather?q=" + city + ",fr&appid=bfd5acdf0b57e8494afe1bc9295a4037");

		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.connect();

		Scanner sc = new Scanner(url.openStream());
		while (sc.hasNext()) {
			inline += sc.nextLine();
		}
		JSONObject json = new JSONObject(inline);
		sc.close();
		return json;
	}

	public static boolean getRain(String city) throws MalformedURLException, IOException, JSONException {
		JSONObject json = contactAPIByCity(city);
		return json.getJSONArray("weather").getJSONObject(0).getString("main").equals("Rain");
	}

	public static double getTemps(String city) throws MalformedURLException, IOException, JSONException {
		JSONObject json = contactAPIByCity(city);
		return Double.parseDouble(json.getJSONObject("main").getString("temp")) - 273.15;
	}
}
