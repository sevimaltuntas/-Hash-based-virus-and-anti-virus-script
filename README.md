# -Hash-based-virus-and-anti-virus-script

Hash-based virus and anti-virus script

 Bir adet virüs oluşturucu ve bir adet de virüs tespit edici uygulamalar bash scripting ile yazılacak. Scriptler Ubuntu Linux VM üzerinde çalıştırılacaktır.

 Virüs tespiti hash değeri ile yapılacak.

 İlk uygulama manuel tetikleme ile /tmp/script1 dizini altında 1'den 500000'e kadar .exe uzantılı dosya oluşturacak ve dosyanın adını, uzantısı olmadan dosyanın içine yazacak.

 İkinci uygulama ise MD5 hashi "d6ea69a5401ef7e5e953c0edaa16cd50" olan dosyanın adını tespit edip bu dosyanın adını /var/log/av.log dosyasının içine aşağıdaki formatta yazacak: "Tespit zamanı, Tespit edilen hostname, Tespit eden kullanıcı adı, Dosya hash değeri, Dosya yoluyla birlikte dosya adı"
