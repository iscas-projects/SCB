(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1133 0)
(declare-sort var3832 0)
(declare-sort var45 0)
(declare-sort var2758 0)
(declare-sort var2019 0)
(declare-sort var1996 0)
(declare-sort var542 0)
(declare-sort var3060 0)
(declare-sort var448 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/4186002 (var1133) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun var2758-init () var2758)
(declare-fun var2019-init () var2019)
(declare-fun var1996-init () var1996)
(declare-fun <init>/-2137283649 (var1996 String) void)
(declare-fun <init>/-45892038 (var2019 var542) void)
(declare-fun cast-from-var1996-to-var542 (var1996) var542)
(declare-fun <init>/-598268155 (var2758 var542) void)
(declare-fun cast-from-var2019-to-var542 (var2019) var542)
(declare-fun close/-1278963174 (var448) void)
(declare-fun cast-from-var2758-to-var448 (var2758) var448)
(declare-const null-var1133 var1133)
(declare-const null-String String)
(declare-const var45-separatorChar Int)
(declare-const null-var3060 var3060)
(declare-const var2303 var1133) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ClassFile 
(assert (not (= var2303 null-var1133)))
(declare-const var3967 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3967 null-String)))
(assert true)
(define-const var2116 String (getName/4186002 var2303)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ClassFile: java.lang.String getName()>() 
(define-const var3080 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3080)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3080!1 String)
(assert (= var3080!1 ""))
(assert true)
(define-const var3595 String (append/672562846 var3080!1 var3967)) ; Statement: $r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3080!2 String)
(assert (= var3080!2 (str.++ var3080!1 var3967)))
(define-const var2113 Int var45-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var1586 String (append/-1166366385 var3595 var2113)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var3595!1 String)
(assert (str.prefixof var3595 var3595!1))
(define-const var2216 Int var45-separatorChar) ; Statement: $c1 = <java.io.File: char separatorChar> 
(assert true)
(define-const var1578 String (replace/1524665721 var2116 46 var2216)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, $c1) 
(assert true)
(define-const var1337 String (append/672562846 var1586 var1578)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1586!1 String)
(assert (= var1586!1 (str.++ var1586 var1578)))
(assert true)
(define-const var3768 String (append/672562846 var1337 ".class")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var1337!1 String)
(assert (= var1337!1 (str.++ var1337 ".class")))
(assert true)
(define-const var1400 String (toString/-2075883882 var3768)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2426 Int var45-separatorChar) ; Statement: $c2 = <java.io.File: char separatorChar> 
(define-const var2782 Int (cast-from-Int-to-Int var2426)) ; Statement: $i4 = (int) $c2 
(assert true)
(define-const var2889 Int (lastIndexOf/-1292097097 var1400 var2782)) ; Statement: i3 = virtualinvoke r9.<java.lang.String: int lastIndexOf(int)>($i4) 
 ; Statement: if i3 <= 0 goto $r21 = new java.io.DataOutputStream 
(assert (<= var2889 0)) ; Cond: i3 <= 0 
(define-const var893 var2758 var2758-init) ; Statement: $r21 = new java.io.DataOutputStream 
(define-const var3434 var2019 var2019-init) ; Statement: $r20 = new java.io.BufferedOutputStream 
(define-const var2215 var1996 var1996-init) ; Statement: $r19 = new java.io.FileOutputStream 
(assert true)
;(assert (<init>/-2137283649 var2215 var1400)) ; Statement: specialinvoke $r19.<java.io.FileOutputStream: void <init>(java.lang.String)>(r9) 

(declare-const var2215!1 var1996)
(declare-const var1400!1 String)
(assert true)
;(assert (<init>/-45892038 var3434 (cast-from-var1996-to-var542 var2215!1))) ; Statement: specialinvoke $r20.<java.io.BufferedOutputStream: void <init>(java.io.OutputStream)>($r19) 

(declare-const var3434!1 var2019)
(declare-const var2215!2 var1996)
(assert true)
;(assert (<init>/-598268155 var893 (cast-from-var2019-to-var542 var3434!1))) ; Statement: specialinvoke $r21.<java.io.DataOutputStream: void <init>(java.io.OutputStream)>($r20) 

(declare-const var893!1 var2758)
(declare-const var3434!2 var2019)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var711 var3060) ; Statement: $r11 := @caughtexception 
(assert (not (= var711 null-var3060)))
(assert true) ; Non Conditional
(assert true)
;(assert (close/-1278963174 (cast-from-var2758-to-var448 var893!1))) ; Statement: virtualinvoke $r21.<java.io.DataOutputStream: void close()>() 

(declare-const var893!2 var2758)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/4186002=([org.apache.ibatis.javassist.bytecode.ClassFile], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int), var2758-init=([], java.io.DataOutputStream), var2019-init=([], java.io.BufferedOutputStream), var1996-init=([], java.io.FileOutputStream), <init>/-2137283649=([java.io.FileOutputStream, java.lang.String], void), <init>/-45892038=([java.io.BufferedOutputStream, java.io.OutputStream], void), cast-from-var1996-to-var542=([java.io.FileOutputStream], java.io.OutputStream), <init>/-598268155=([java.io.DataOutputStream, java.io.OutputStream], void), cast-from-var2019-to-var542=([java.io.BufferedOutputStream], java.io.OutputStream), close/-1278963174=([java.io.FilterOutputStream], void), cast-from-var2758-to-var448=([java.io.DataOutputStream], java.io.FilterOutputStream)}
; {var1133=org.apache.ibatis.javassist.bytecode.ClassFile, var2303=r0, var3967=r3, var3832=null_type, var2116=r1, var3080=$r17, var3595=$r4, var45=java.io.File, var2113=$c0, var1586=$r6, var2216=$c1, var1578=$r5, var1337=$r7, var3768=$r8, var1400=r9, var2426=$c2, var2782=$i4, var2889=i3, var2758=java.io.DataOutputStream, var893=$r21, var2019=java.io.BufferedOutputStream, var3434=$r20, var1996=java.io.FileOutputStream, var2215=$r19, var542=java.io.OutputStream, var3060=java.lang.Throwable, var711=$r11, var448=java.io.FilterOutputStream}
; {org.apache.ibatis.javassist.bytecode.ClassFile=var1133, r0=var2303, r3=var3967, null_type=var3832, r1=var2116, $r17=var3080, $r4=var3595, java.io.File=var45, $c0=var2113, $r6=var1586, $c1=var2216, $r5=var1578, $r7=var1337, $r8=var3768, r9=var1400, $c2=var2426, $i4=var2782, i3=var2889, java.io.DataOutputStream=var2758, $r21=var893, java.io.BufferedOutputStream=var2019, $r20=var3434, java.io.FileOutputStream=var1996, $r19=var2215, java.io.OutputStream=var542, java.lang.Throwable=var3060, $r11=var711, java.io.FilterOutputStream=var448}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ClassFile;	r3 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ClassFile: java.lang.String getName()>();	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$c0 = <java.io.File: char separatorChar>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$c1 = <java.io.File: char separatorChar>;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, $c1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$c2 = <java.io.File: char separatorChar>;	$i4 = (int) $c2;	i3 = virtualinvoke r9.<java.lang.String: int lastIndexOf(int)>($i4);	if i3 <= 0 goto $r21 = new java.io.DataOutputStream;	$r21 = new java.io.DataOutputStream;	$r20 = new java.io.BufferedOutputStream;	$r19 = new java.io.FileOutputStream;	specialinvoke $r19.<java.io.FileOutputStream: void <init>(java.lang.String)>(r9);	specialinvoke $r20.<java.io.BufferedOutputStream: void <init>(java.io.OutputStream)>($r19);	specialinvoke $r21.<java.io.DataOutputStream: void <init>(java.io.OutputStream)>($r20);	$r11 := @caughtexception;	virtualinvoke $r21.<java.io.DataOutputStream: void close()>();	throw $r11
;block_num 4