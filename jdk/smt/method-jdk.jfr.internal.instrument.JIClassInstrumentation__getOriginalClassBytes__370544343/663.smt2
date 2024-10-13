(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2149 0)
(declare-sort var2842 0)
(declare-sort var1428 0)
(declare-sort var2610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2149-init () var2149)
(declare-fun <init>/-707998177 (var2149) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1428_getResourceAsStream/-1567249933 (String) var2842)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun read/-661881266 (var2842 (Array Int Int) Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun flush/-1894353370 (var2610) void)
(declare-fun cast-from-var2149-to-var2610 (var2149) var2610)
(declare-fun close/-190175943 (var2842) void)
(declare-fun toByteArray/1343874077 (var2149) (Array Int Int))
(declare-const null-ClassObject ClassObject)
(declare-const var2635 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var2635 null-ClassObject)))
(define-const var1490 var2149 var2149-init) ; Statement: $r12 = new java.io.ByteArrayOutputStream 
(assert true)
;(assert (<init>/-707998177 var1490)) ; Statement: specialinvoke $r12.<java.io.ByteArrayOutputStream: void <init>()>() 

(declare-const var1490!1 var2149)
(define-const var1410 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1410)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1410!1 String)
(assert (= var1410!1 ""))
(assert true)
(define-const var2590 String (append/672562846 var1410!1 "/")) ; Statement: $r5 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var1410!2 String)
(assert (= var1410!2 (str.++ var1410!1 "/")))
(assert true)
(define-const var2902 String (getName/-1958580599 var2635)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2238 String (replace/2138489945 var2902 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(assert true)
(define-const var8 String (append/672562846 var2590 var2238)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2590!1 String)
(assert (= var2590!1 (str.++ var2590 var2238)))
(assert true)
(define-const var3333 String (append/672562846 var8 ".class")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var8!1 String)
(assert (= var8!1 (str.++ var8 ".class")))
(assert true)
(define-const var3671 String (toString/-2075883882 var3333)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2230 var2842 (var1428_getResourceAsStream/-1567249933 var3671)) ; Statement: r9 = staticinvoke <jdk.jfr.internal.SecuritySupport: java.io.InputStream getResourceAsStream(java.lang.String)>(r8) 
(define-const var1180 (Array Int Int) arr-Int-init) ; Statement: r10 = newarray (byte)[16384] 
(assert true) ; Non Conditional
(define-const var221 Int (getLength-Arr-Int-1 var1180)) ; Statement: $i0 = lengthof r10 
(assert true)
(define-const var2429 Int (read/-661881266 var2230 var1180 0 var221)) ; Statement: $i1 = virtualinvoke r9.<java.io.InputStream: int read(byte[],int,int)>(r10, 0, $i0) 
(define-const var1842 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if $i1 == $i3 goto virtualinvoke $r12.<java.io.ByteArrayOutputStream: void flush()>() 
(assert (= var2429 var1842)) ; Cond: $i1 == $i3 
(assert true)
;(assert (flush/-1894353370 (cast-from-var2149-to-var2610 var1490!1))) ; Statement: virtualinvoke $r12.<java.io.ByteArrayOutputStream: void flush()>() 

(declare-const var1490!2 var2149)
(assert true)
;(assert (close/-190175943 var2230)) ; Statement: virtualinvoke r9.<java.io.InputStream: void close()>() 

(declare-const var2230!1 var2842)
(assert true)
(define-const var2337 (Array Int Int) (toByteArray/1343874077 var1490!2)) ; Statement: $r11 = virtualinvoke $r12.<java.io.ByteArrayOutputStream: byte[] toByteArray()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2149-init=([], java.io.ByteArrayOutputStream), <init>/-707998177=([java.io.ByteArrayOutputStream], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1428_getResourceAsStream/-1567249933=([java.lang.String], java.io.InputStream), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), read/-661881266=([java.io.InputStream, byte[], int, int], int), cast-from-Int-to-Int=([int], int), flush/-1894353370=([java.io.OutputStream], void), cast-from-var2149-to-var2610=([java.io.ByteArrayOutputStream], java.io.OutputStream), close/-190175943=([java.io.InputStream], void), toByteArray/1343874077=([java.io.ByteArrayOutputStream], byte[])}
; {var2635=r2, var2149=java.io.ByteArrayOutputStream, var1490=$r12, var1410=$r13, var2590=$r5, var2902=$r3, var2238=$r4, var8=$r6, var3333=$r7, var3671=r8, var2842=java.io.InputStream, var1428=jdk.jfr.internal.SecuritySupport, var2230=r9, var1180=r10, var221=$i0, var2429=$i1, var1842=$i3, var2610=java.io.OutputStream, var2337=$r11}
; {r2=var2635, java.io.ByteArrayOutputStream=var2149, $r12=var1490, $r13=var1410, $r5=var2590, $r3=var2902, $r4=var2238, $r6=var8, $r7=var3333, r8=var3671, java.io.InputStream=var2842, jdk.jfr.internal.SecuritySupport=var1428, r9=var2230, r10=var1180, $i0=var221, $i1=var2429, $i3=var1842, java.io.OutputStream=var2610, $r11=var2337}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Class;	$r12 = new java.io.ByteArrayOutputStream;	specialinvoke $r12.<java.io.ByteArrayOutputStream: void <init>()>();	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r9 = staticinvoke <jdk.jfr.internal.SecuritySupport: java.io.InputStream getResourceAsStream(java.lang.String)>(r8);	r10 = newarray (byte)[16384];	$i0 = lengthof r10;	$i1 = virtualinvoke r9.<java.io.InputStream: int read(byte[],int,int)>(r10, 0, $i0);	$i3 = (int) -1;	if $i1 == $i3 goto virtualinvoke $r12.<java.io.ByteArrayOutputStream: void flush()>();	virtualinvoke $r12.<java.io.ByteArrayOutputStream: void flush()>();	virtualinvoke r9.<java.io.InputStream: void close()>();	$r11 = virtualinvoke $r12.<java.io.ByteArrayOutputStream: byte[] toByteArray()>();	return $r11
;block_num 3