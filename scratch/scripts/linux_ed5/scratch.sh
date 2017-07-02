#! /bin/sh
echo "Download do AdobeAIRInstaller.bin..." \
&& wget --no-check-certificate http://airdownload.adobe.com/air/lin/download/2.6/AdobeAIRInstaller.bin \
&& echo "Download concluído!" \
&& echo "Scratch-456.0.3.air..." \
&& wget --no-check-certificate https://scratch.mit.edu/scratchr2/static/sa/Scratch-456.0.3.air \
&& echo "Download concluído!" \
&& echo "Instalando Adobe AIR..." \
&& chmod 777 AdobeAIRInstaller.bin \
&& sudo LD_LIBRARY_PATH=/usr/lib/i386-linux-gnu ./AdobeAIRInstaller.bin -silent -eulaAccepted -pingbackAllowed \
&& echo "Instalando Scratch..." \
&& sudo "/opt/Adobe AIR/Versions/1.0/Adobe AIR Application Installer" -silent Scratch-456.0.3.air \
&& echo "Pronto!"