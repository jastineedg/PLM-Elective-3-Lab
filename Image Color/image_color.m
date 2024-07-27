f=imread('orange.png');
figure
imshow(f)
size(f);
imwrite(f,'orange.png'); %no need to specify path since online
figure
imshow(f)
g=rgb2gray(f);
imshow(g)
whos f
  Name        Size                Bytes  Class    Attributes

  f         500x500x3            750000  uint8              

whos g
  Name        Size              Bytes  Class    Attributes

  g         500x500            250000  uint8              

%whos displays the information of the image
imfinfo('orange.png') %should be without semicolon

ans = 

  struct with fields:

                  Filename: '/MATLAB Drive/orange.png'
               FileModDate: '27-Jul-2024 02:54:09'
                  FileSize: 173498
                    Format: 'png'
             FormatVersion: []
                     Width: 500
                    Height: 500
                  BitDepth: 24
                 ColorType: 'truecolor'
           FormatSignature: [137 80 78 71 13 10 26 10]
                  Colormap: []
                 Histogram: []
             InterlaceType: 'none'
              Transparency: 'none'
    SimpleTransparencyData: []
           BackgroundColor: []
           RenderingIntent: []
            Chromaticities: []
                     Gamma: []
               XResolution: []
               YResolution: []
            ResolutionUnit: []
                   XOffset: []
                   YOffset: []
                OffsetUnit: []
           SignificantBits: []
              ImageModTime: '27 Jul 2024 02:54:09 +0000'
                     Title: []
                    Author: []
               Description: []
                 Copyright: []
              CreationTime: []
                  Software: []
                Disclaimer: []
                   Warning: []
                    Source: []
                   Comment: []
                 OtherText: []

imwrite(f,'orange.jpg');
imfinfo('orange.jpg') %should be without semicolon

ans = 

  struct with fields:

           Filename: '/MATLAB Drive/orange.jpg'
        FileModDate: '27-Jul-2024 03:02:22'
           FileSize: 19994
             Format: 'jpg'
      FormatVersion: ''
              Width: 500
             Height: 500
           BitDepth: 24
          ColorType: 'truecolor'
    FormatSignature: ''
    NumberOfSamples: 3
       CodingMethod: 'Huffman'
      CodingProcess: 'Sequential'
            Comment: {}

img_color=imread('orange.jpg');
img_red=img_color;
img_red(:,:,2)=0;
img_red(:,:,3)=0;
figure(1): imshow(img_red);
Operator ':' is not supported for operands of type 'matlab.ui.Figure'.
 
figure(1);
imshow(img_red);
%img_red(:,:,2)=0; the 2 means y coordinate
img_green(:,:,1)=0;
img_green(:,:,3)=0; %coordinate of z of the blue color
figure(3);
imshow(img_green);
imshow(img_green;
 imshow(img_green;
                 ↑
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check for mismatched delimiters.
 
Did you mean:
imshow(img_green);
img_color=imread('orange.jpg');
img_green=img_color;
img_green(:,:,1)=0;
img_green(:,:,3)=0; %coordinate of z of the blue color
imshow(img_green);
figure(3);
imshow(img_green);
figure(1);
imshow(img_red);
img_blue=img_color;
img_blue(:,:,1)=0;
img_blue(:,:,2)=0;
figure(4);
imshow(img_blue);
imwrite(img_red,'img_red');
Error using imwrite (line 449)
Unable to determine file format from filename.
 
imwrite(img_red,'img_red.png');
imwrite(img_red,'img_red.jpg');
whos img_red.jpg
whos img_red.jpg;
imfinfo('img_red.jpg')

ans = 

  struct with fields:

           Filename: '/MATLAB Drive/img_red.jpg'
        FileModDate: '27-Jul-2024 03:25:39'
           FileSize: 11114
             Format: 'jpg'
      FormatVersion: ''
              Width: 500
             Height: 500
           BitDepth: 24
          ColorType: 'truecolor'
    FormatSignature: ''
    NumberOfSamples: 3
       CodingMethod: 'Huffman'
      CodingProcess: 'Sequential'
            Comment: {}

imwrite(img_green,'img_green.png');
imwrite(img_green,'img_green.jpg');
imwrite(img_blue,'img_blue.png');
imwrite(img_blue,'img_blue.jpg');
imwrite(g,'gray.png');
imwrite(g,'gray.jpg');