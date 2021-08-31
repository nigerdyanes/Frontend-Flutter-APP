import 'dart:io';
import 'dart:typed_data';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_geolocalization/src/utils/theme.dart';
import 'package:project_geolocalization/src/widgets/widgets.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';


class IncidentPage extends StatefulWidget {
  IncidentPage({Key key}) : super(key: key);

  @override
  _IncidentPageState createState() => _IncidentPageState();
}

class _IncidentPageState extends State<IncidentPage> {

  
  
  String video;
  List<PickedFile> listaFotos = [];
  List<Map<String, dynamic>> listaVideos = [];
  File image;
  PickedFile foto;
  var picker = new ImagePicker();
  VideoPlayerController _videoController;

  @override
  void initState() {
    // TODO: implement initState

    
    
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {

    return Scaffold
    (
      backgroundColor: Color(0xffF2F2F2),
      appBar: Widgets.createAppBar("Incidentes"),
      endDrawer: Widgets.createDrawer(context),
      body: Container
      (
        
        height: double.infinity,
        width: double.infinity,
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: Column
          (
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: 
            [
              Text("Reporta un Incidente", style: TextStyle(color: accentColor, fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              SizedBox(height: 20),
              _createIncidentTitleTextField(),

              SizedBox(height: 20),
              _createDescriptionTextField(),

              SizedBox(height: 20),
              
              _createWhereTextField(),
              
              SizedBox(height: 30),
              Text("Fotografías", style: TextStyle(color: accentColor, fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Flexible
              (
                child: Container(
                  width: AppTheme.getWidth(context),

                  child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                    [
                      _createSelectPhotoButton(),
                      
                      Flexible
                      (
                        child: SizedBox
                          (
                            height: 100,
                            // color: Colors.black,
                            child: _createPhotosList(),

                          ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),
              Text("Videos", style: TextStyle(color: accentColor, fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Flexible
              (
                child: Container(
                  width: AppTheme.getWidth(context),

                  child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                    [
                      _createSelectVideoButton(),
                      
                      Flexible
                      (
                        child: SizedBox
                          (
                            height: 100,
                            // color: Colors.black,
                            child: _createVideoList(),

                          ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30,),
              _createSendIncidentButton()

            ],
          ),
        ),
      )
    );
  }

  Widget _createIncidentTitleTextField() 
  {
    return TextFormField
    (
      decoration: InputDecoration
      (
        fillColor: primaryColor,
        filled: true,
        hintText: "¿Qué pasó?",
        hintStyle: TextStyle
        (
          color: Colors.black.withOpacity(0.2),
        ),

        border: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: primaryColor)
          
        ),
        focusedBorder: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: primaryColor)
          
        ),
        // focusedBorder: focusedBroderField()

      )
    );
    
  }

  Widget _createDescriptionTextField() 
  {
    return TextFormField
    (
      keyboardType: TextInputType.multiline,
      maxLines: null,
      minLines: 5,
      decoration: InputDecoration
      (
        
        fillColor: primaryColor,
        filled: true,
        hintText: "¿Descripción?",
        hintStyle: TextStyle
        (
          color: Colors.black.withOpacity(0.2),
        ),

        border: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: primaryColor)
          
        ),
        focusedBorder: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: primaryColor)
          
        ),
        disabledBorder: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: primaryColor)
          
        ),

      )
    );
  }

  Widget _createWhereTextField()
  {
    return TextFormField
    (
      decoration: InputDecoration
      (
        fillColor: primaryColor,
        filled: true,
        hintText: "¿Donde?",
        hintStyle: TextStyle
        (
          color: Colors.black.withOpacity(0.2),
        ),

        border: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: primaryColor)
          
        ),
        focusedBorder: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: primaryColor)
          
        ),
        // focusedBorder: focusedBroderField()

      )
    );
  }

  Widget _createSelectPhotoButton() 
  {
    return GestureDetector
    (
      onTap: () => showDialog(context: context, builder:(_)=> _createPhotoSourceDialog()),
      child: Container
      (
        height: 100, width: 100,
        child: Icon(Icons.camera_enhance, size: 60),
      ),
    );
  }

  Widget _createSelectVideoButton() 
  {
    return GestureDetector
    (
      onTap: () => showDialog(context: context, builder:(_)=> _createVideoSourceDialog()),
      child: Container
      (
        height: 100, width: 100,
        child: Icon(Icons.videocam, size: 60),
      ),
    );
  }

// /**************************************************************************************/
 
  Future _tomarFoto(String fuente) async {
    
    if(fuente=="galeria")
    {
       final image = await ImagePicker().getImage(source: ImageSource.gallery, imageQuality: 100, maxHeight: 400, maxWidth: 400);
       setState(() {
        foto=image;
        listaFotos.add(foto);
        
        
      });
    }
    else
    {
      final image = await ImagePicker().getImage(source: ImageSource.camera, imageQuality: 100, maxHeight: 400, maxWidth: 400);
      setState(() {
        foto=image;
        listaFotos.add(foto);
        
        
      });
    }


    Navigator.pop(context, true);
  }

  Widget _createPhotoSourceDialog()
  {
    return AlertDialog
    (
      title: Text("Cargar Fotos"),
      content: Text("¿Desde qué fuente deseas cargar las fotos?"),
      actions: 
      [
        MaterialButton
        (
          onPressed: ()async
          {
            await _tomarFoto("galeria");
          },
          child: Text("Galería"),
        ),
        MaterialButton
        (
          onPressed: ()async
          {
            await _tomarFoto("camara");
          },
          child: Text("Cámara"),
        ),
      ],
      
    );
  }

  Widget _viewPhoto(int index)
  {
    return AlertDialog
    (
      actions: 
      [
        Hero(tag: "image$index", child: Image(image: FileImage(File(listaFotos[index].path)))),
      ],
    );
  }

  Widget _deleteImageFromList(int index)
  {
    return AlertDialog
    (
      title: Text("Eliminar Imagen"),
      content: Text("¿Desea eliminar esta imagen?"),
      actions: 
      [
        MaterialButton
        (
          onPressed: () 
          {
            Navigator.pop(context, true);
          },
          child: Text("No"),
        ),
        MaterialButton
        (
          onPressed: () 
          {
            setState(() 
            {
              listaFotos.removeAt(index);
              Navigator.pop(context, true);
            });
          },
          child: Text("Si"),
        ),
      ],
    );
  }

  Widget _createPhotosList()
  {
    return ListView.builder
    (
      
      itemCount: listaFotos.length,
      itemBuilder: (context, index)
      {
        return Container( alignment: AlignmentDirectional.center, height: 100, width: 100,
        child: Stack(
          children: 
          [
            GestureDetector
            (
              child: Hero( tag:"image$index" ,child: Image(image: FileImage(File(listaFotos[index].path)))),
              onTap: () => showDialog(context: context, builder: (_) => _viewPhoto(index)),
            ),
            if (listaFotos.length>0) Column
            (
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                GestureDetector
                (
                  onTap: () => showDialog(context: context, builder: (_) => _deleteImageFromList(index)),
                  child: Container
                  (
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration
                    (
                      color: accentColor,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Icon(Icons.delete_outline, color: Colors.white, size: 18,),
                    
                  ),
                )
              ],
            ) else Text("")
          ],
        ),
        );
      },
      scrollDirection: Axis.horizontal
    );

  }

// /**************************************************************************************/

  Future _tomarVideo(String fuente) async {  
    if(fuente=="galeria")
    {
      final image = await ImagePicker().getVideo(source: ImageSource.gallery);
      final videoThumbnail = await VideoThumbnail.thumbnailData(video: image.path, quality: 100, maxWidth: 200, imageFormat: ImageFormat.PNG);
      setState(()
      {

        Map<String, dynamic> object = {"rutaVideo":image.path, "imagenVideo":videoThumbnail};
        listaVideos.add(object);
      });
      
    }
    else
    {
      final image = await ImagePicker().getVideo(source: ImageSource.camera);
      final videoThumbnail = await VideoThumbnail.thumbnailData(video: image.path, quality: 100, maxWidth: 200, imageFormat: ImageFormat.PNG);

      
      
      setState(()
      {
        
        Map<String, dynamic> object = {"rutaVideo":image.path, "imagenVideo":videoThumbnail};
        listaVideos.add(object);
      });
      // _controller = VideoPlayerController.asset(image.path);
      
    }
    
    // setState(() {
    //   _controller = VideoPlayerController.file(File(video));
    //   _initializeVideoPlayerFuture = _controller.initialize();
    //   _controller.setLooping(false);
    //   _controller.setVolume(0);
    // });
    
    Navigator.pop(context, true);
  }

  Widget _createVideoSourceDialog()
  {
    return AlertDialog
    (
      title:    Text("Cargar Videos"),
      content:  Text("¿Desde qué fuente deseas cargar el video?"),
      actions: 
      [
        MaterialButton
        (
          onPressed: ()async
          {
            await _tomarVideo("galeria");
          },
          child: Text("Galería"),
        ),
        MaterialButton
        (
          onPressed: ()async
          {
            await _tomarVideo("camara");
          },
          child: Text("Cámara"),
        ),
      ],
      
    );
  }

  Widget _viewVideo(int index)
  {
    
    _videoController = VideoPlayerController.file(File(listaVideos[index]["rutaVideo"]));
    _videoController.initialize();
    _videoController.setLooping(true);
    
    _videoController.play();
    return AlertDialog
    (
      actions: 
      [
        Container
        (
          
          height: AppTheme.getHeight(context)*0.8,
          child: AspectRatio(
              aspectRatio: _videoController.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  
                  _ControlsOverlay(controller: _videoController),
                  VideoProgressIndicator(_videoController, allowScrubbing: true),
                ],
              ),
          )
        ),
      ],
      
    );
    
  }

  Widget _deleteVideoFromList(int index)
  {
    return AlertDialog
    (
      
      title: Text("Eliminar Video"),
      content: Text("¿Desea eliminar este video?"),
      actions: 
      [
        MaterialButton
        (
          onPressed: () 
          {
            Navigator.pop(context, true);
          },
          child: Text("No"),
        ),
        MaterialButton
        (
          onPressed: () 
          {
            setState(() 
            {
              listaVideos.removeAt(index);
              Navigator.pop(context, true);
            });
          },
          child: Text("Si"),
        ),
      ],
      
    );
    
  }

   Widget _createVideoList()
  {
    return ListView.builder
    (
      
      itemCount: listaVideos.length,
      itemBuilder: (context, index)
      {
        return Container( alignment: AlignmentDirectional.center, height: 100, width: 100,
        child: Stack(
          children: 
          [
            GestureDetector
            (
              child:  Image.memory(Uint8List.fromList(listaVideos[index]["imagenVideo"]),
              
            ),
              onTap: () => showDialog(context: context, builder: (_) => _viewVideo(index)),
            ),
            if (listaVideos.length>0) Column
            (
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                GestureDetector
                (
                  onTap: () => showDialog(context: context, builder: (_) => _deleteVideoFromList(index)),
                  child: Container
                  (
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration
                    (
                      color: accentColor,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Icon(Icons.delete_outline, color: Colors.white, size: 18,),
                    
                  ),
                )
              ],
            ) else Text("")
          ],
        ),
        );
      },
      scrollDirection: Axis.horizontal
    );

  }

  Widget _createSendIncidentButton()
  {
    return MaterialButton
    (
      onPressed: (){},
      color:  accentColor,
      
      elevation: 10,
      // focusElevation: 100,
      shape: RoundedRectangleBorder
      (
        borderRadius: BorderRadius.circular(10),
        // side: BorderSide(color: Colors.black, width: 3),
      ),
      child: Text
      ( 
        "Guardar", 
        style: TextStyle
        (
          color: Colors.white,
          // fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

}


// ignore: must_be_immutable
class _ControlsOverlay extends StatefulWidget {
  VideoPlayerController controller;

  _ControlsOverlay({this.controller});

  @override
  _ControlsOverlayState createState() => _ControlsOverlayState();
}

class _ControlsOverlayState extends State<_ControlsOverlay> {

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: <Widget>[
          VideoPlayer(widget.controller),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 50),
            reverseDuration: Duration(milliseconds: 200),
            child: widget.controller.value.isPlaying
                ? SizedBox.shrink()
                : Container(
                    color: Colors.black26,
                    child: Center(
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 100.0,
                      ),
                    ),
                  ),
          ),
          GestureDetector(
            onTap: () {
              widget.controller.value.isPlaying ? widget.controller.pause() : widget.controller.play();
            },
          ),
         
        ],
      );
  }
}

