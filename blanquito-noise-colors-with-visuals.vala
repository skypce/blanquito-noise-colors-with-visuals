//valac --pkg gtk+-3.0 <package.name>
using Gtk;
int main (string[] args) {
    Gtk.init (ref args);

    var window = new Window ();
    window.title = "Blanco - Noise Color with visuals.";
    window.border_width = 10;
    window.window_position = WindowPosition.CENTER;
    window.set_default_size (350,140);
    window.destroy.connect (Gtk.main_quit);

    var button = new Button.with_label ("White Noise");
    button.clicked.connect (white_noise);
    var button1 = new Button.with_label ("Pink Noise");
    button1.clicked.connect (pink_noise);
    var button2 = new Button.with_label ("Brown Noise");
    button2.clicked.connect (brown_noise);
    var button3 = new Button.with_label ("Stop and Reset Colors");
    button3.clicked.connect (stop);

  

     var box = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
  box.set_border_width(2);

    box.add (button);

    box.add (button1);
    box.add (button2);
    box.add (button3);
    window.add (box);
    window.show_all ();

    Gtk.main ();
    return 0;

}
public int execute_command_sync (string cmd)
{
    try {
        int exitCode;
        Process.spawn_command_line_sync(cmd, null, null, out exitCode);
        return exitCode;
    }
    catch (Error e){
      string msg = e.message;
      stderr.printf(msg);
        return -1;
    }
}

 public void white_noise () 
  {   
    execute_command_sync(@"./white-noise.sh");
  

  
  }
  public void pink_noise () 
  {   
      execute_command_sync(@"./pink-noise.sh");

      //messagebox_show ("Success", "Your language has been changed");
   
  }
  public void brown_noise () 
  {   
  
      execute_command_sync(@"./brown-noise.sh");

      //messagebox_show ("Success", "Your language has been changed");
  
 
  }
  public void stop () 
  {   
   
      execute_command_sync(@"killall play");
      execute_command_sync(@"nvidia-settings -a 'DigitalVibrance=0' -a 'RedBrightness=0' -a 'GreenBrightness=0' -a 'BlueBrightness=0'");


      //messagebox_show ("Success", "Your language has been changed");
 
  }
   

