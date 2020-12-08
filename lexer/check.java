import com.graphics.*;
import java.util.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.util.ArrayList;
import javax.swing.*;

public class check{
    public static boolean debug = false;
    public static int randx;
    public static int randy;
    
    public check(){} public static String Balance(String s)
    {
        String output = "";
        try {
        Process p = Runtime.getRuntime().exec("python3 balance.py " + s );
        BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));
        output += in.readLine();
        } catch (Exception e) {
        }
        return output;
    }public static void main(String args[])
{
String eq;eq = Balance("Cu1 HNO3==NO H2O CuN2O6");
System.out.println(eq);
}
}