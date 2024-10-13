(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1954 0)
(declare-sort var1674 0)
(declare-sort var155 0)
(declare-sort var1445 0)
(declare-sort var1831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1674) ClassObject)
(declare-fun cast-from-var1954-to-var1674 (var1954) var1674)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var155) String)
(declare-fun cast-from-var1954-to-var155 (var1954) var155)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var155) var1674)
(declare-fun cast-from-var1674-to-var1445 (var1674) var1445)
(declare-fun var1445_deepCopyOf/1921364877 (var1445) var1445)
(declare-fun bytes/727234302 (var1445) (Array Int Int))
(declare-fun var1954_decode/1627103539 ((Array Int Int)) var1831)
(declare-fun getAddress/1395180238 (var1831) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun getHostAddress/1493983505 (var1831) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1954 var1954)
(declare-const var3935 var1954) ; Statement: r1 := @this: org.apache.lucene.document.InetAddressPoint 
(assert (not (= var3935 null-var1954)))
(define-const var1917 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1917)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1917!1 String)
(assert (= var1917!1 ""))
(assert true)
(define-const var3365 ClassObject (getClass/1258963082 (cast-from-var1954-to-var1674 var3935))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1549 String (getSimpleName/-390194377 var3365)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var1917!1 var1549)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1917!2 String)
(assert (= var1917!2 (str.++ var1917!1 var1549)))
(assert true)
;(assert (append/672562846 var1917!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var1917!3 String)
(assert (= var1917!3 (str.++ var1917!2 " <")))
(define-const var1470 String (name/835448125 (cast-from-var1954-to-var155 var3935))) ; Statement: $r4 = r1.<org.apache.lucene.document.InetAddressPoint: java.lang.String name> 
(assert true)
;(assert (append/672562846 var1917!3 var1470)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1917!4 String)
(assert (= var1917!4 (str.++ var1917!3 var1470)))
(assert true)
;(assert (append/-1166366385 var1917!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1917!5 String)
(assert (str.prefixof var1917!4 var1917!5))
(define-const var3236 var1674 (fieldsData/835448125 (cast-from-var1954-to-var155 var3935))) ; Statement: $r5 = r1.<org.apache.lucene.document.InetAddressPoint: java.lang.Object fieldsData> 
(define-const var2518 var1445 (cast-from-var1674-to-var1445 var3236)) ; Statement: r6 = (org.apache.lucene.util.BytesRef) $r5 
(define-const var649 var1445 (var1445_deepCopyOf/1921364877 var2518)) ; Statement: $r7 = staticinvoke <org.apache.lucene.util.BytesRef: org.apache.lucene.util.BytesRef deepCopyOf(org.apache.lucene.util.BytesRef)>(r6) 
(define-const var1332 (Array Int Int) (bytes/727234302 var649)) ; Statement: $r8 = $r7.<org.apache.lucene.util.BytesRef: byte[] bytes> 
(define-const var1033 var1831 (var1954_decode/1627103539 var1332)) ; Statement: r9 = staticinvoke <org.apache.lucene.document.InetAddressPoint: java.net.InetAddress decode(byte[])>($r8) 
(assert true)
(define-const var341 (Array Int Int) (getAddress/1395180238 var1033)) ; Statement: $r10 = virtualinvoke r9.<java.net.InetAddress: byte[] getAddress()>() 
(define-const var1979 Int (getLength-Arr-Int-1 var341)) ; Statement: $i0 = lengthof $r10 
 ; Statement: if $i0 != 16 goto $r11 = virtualinvoke r9.<java.net.InetAddress: java.lang.String getHostAddress()>() 
(assert (not (= var1979 16))) ; Cond: $i0 != 16 
(assert true)
(define-const var3183 String (getHostAddress/1493983505 var1033)) ; Statement: $r11 = virtualinvoke r9.<java.net.InetAddress: java.lang.String getHostAddress()>() 
(assert true)
;(assert (append/672562846 var1917!5 var3183)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1917!6 String)
(assert (= var1917!6 (str.++ var1917!5 var3183)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1917!6 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1917!7 String)
(assert (str.prefixof var1917!6 var1917!7))
(assert true)
(define-const var3279 String (toString/-2075883882 var1917!7)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1954-to-var1674=([org.apache.lucene.document.InetAddressPoint], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var1954-to-var155=([org.apache.lucene.document.InetAddressPoint], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var1674-to-var1445=([java.lang.Object], org.apache.lucene.util.BytesRef), var1445_deepCopyOf/1921364877=([org.apache.lucene.util.BytesRef], org.apache.lucene.util.BytesRef), bytes/727234302=([org.apache.lucene.util.BytesRef], byte[]), var1954_decode/1627103539=([byte[]], java.net.InetAddress), getAddress/1395180238=([java.net.InetAddress], byte[]), getLength-Arr-Int-1=([byte[]], int), getHostAddress/1493983505=([java.net.InetAddress], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1954=org.apache.lucene.document.InetAddressPoint, var3935=r1, var1917=$r0, var1674=java.lang.Object, var3365=$r2, var1549=$r3, var155=org.apache.lucene.document.Field, var1470=$r4, var3236=$r5, var1445=org.apache.lucene.util.BytesRef, var2518=r6, var649=$r7, var1332=$r8, var1831=java.net.InetAddress, var1033=r9, var341=$r10, var1979=$i0, var3183=$r11, var3279=$r12}
; {org.apache.lucene.document.InetAddressPoint=var1954, r1=var3935, $r0=var1917, java.lang.Object=var1674, $r2=var3365, $r3=var1549, org.apache.lucene.document.Field=var155, $r4=var1470, $r5=var3236, org.apache.lucene.util.BytesRef=var1445, r6=var2518, $r7=var649, $r8=var1332, java.net.InetAddress=var1831, r9=var1033, $r10=var341, $i0=var1979, $r11=var3183, $r12=var3279}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.InetAddressPoint;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.InetAddressPoint: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.InetAddressPoint: java.lang.Object fieldsData>;	r6 = (org.apache.lucene.util.BytesRef) $r5;	$r7 = staticinvoke <org.apache.lucene.util.BytesRef: org.apache.lucene.util.BytesRef deepCopyOf(org.apache.lucene.util.BytesRef)>(r6);	$r8 = $r7.<org.apache.lucene.util.BytesRef: byte[] bytes>;	r9 = staticinvoke <org.apache.lucene.document.InetAddressPoint: java.net.InetAddress decode(byte[])>($r8);	$r10 = virtualinvoke r9.<java.net.InetAddress: byte[] getAddress()>();	$i0 = lengthof $r10;	if $i0 != 16 goto $r11 = virtualinvoke r9.<java.net.InetAddress: java.lang.String getHostAddress()>();	$r11 = virtualinvoke r9.<java.net.InetAddress: java.lang.String getHostAddress()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 3