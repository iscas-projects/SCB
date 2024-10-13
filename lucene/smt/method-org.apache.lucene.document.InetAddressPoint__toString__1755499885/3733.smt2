(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2134 0)
(declare-sort var2472 0)
(declare-sort var2608 0)
(declare-sort var813 0)
(declare-sort var224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2472) ClassObject)
(declare-fun cast-from-var2134-to-var2472 (var2134) var2472)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var2608) String)
(declare-fun cast-from-var2134-to-var2608 (var2134) var2608)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var2608) var2472)
(declare-fun cast-from-var2472-to-var813 (var2472) var813)
(declare-fun var813_deepCopyOf/1921364877 (var813) var813)
(declare-fun bytes/727234302 (var813) (Array Int Int))
(declare-fun var2134_decode/1627103539 ((Array Int Int)) var224)
(declare-fun getAddress/1395180238 (var224) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun getHostAddress/1493983505 (var224) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2134 var2134)
(declare-const var795 var2134) ; Statement: r1 := @this: org.apache.lucene.document.InetAddressPoint 
(assert (not (= var795 null-var2134)))
(define-const var3593 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3593)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3593!1 String)
(assert (= var3593!1 ""))
(assert true)
(define-const var2816 ClassObject (getClass/1258963082 (cast-from-var2134-to-var2472 var795))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var759 String (getSimpleName/-390194377 var2816)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var3593!1 var759)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3593!2 String)
(assert (= var3593!2 (str.++ var3593!1 var759)))
(assert true)
;(assert (append/672562846 var3593!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var3593!3 String)
(assert (= var3593!3 (str.++ var3593!2 " <")))
(define-const var2599 String (name/835448125 (cast-from-var2134-to-var2608 var795))) ; Statement: $r4 = r1.<org.apache.lucene.document.InetAddressPoint: java.lang.String name> 
(assert true)
;(assert (append/672562846 var3593!3 var2599)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3593!4 String)
(assert (= var3593!4 (str.++ var3593!3 var2599)))
(assert true)
;(assert (append/-1166366385 var3593!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3593!5 String)
(assert (str.prefixof var3593!4 var3593!5))
(define-const var2275 var2472 (fieldsData/835448125 (cast-from-var2134-to-var2608 var795))) ; Statement: $r5 = r1.<org.apache.lucene.document.InetAddressPoint: java.lang.Object fieldsData> 
(define-const var2623 var813 (cast-from-var2472-to-var813 var2275)) ; Statement: r6 = (org.apache.lucene.util.BytesRef) $r5 
(define-const var3713 var813 (var813_deepCopyOf/1921364877 var2623)) ; Statement: $r7 = staticinvoke <org.apache.lucene.util.BytesRef: org.apache.lucene.util.BytesRef deepCopyOf(org.apache.lucene.util.BytesRef)>(r6) 
(define-const var2342 (Array Int Int) (bytes/727234302 var3713)) ; Statement: $r8 = $r7.<org.apache.lucene.util.BytesRef: byte[] bytes> 
(define-const var3395 var224 (var2134_decode/1627103539 var2342)) ; Statement: r9 = staticinvoke <org.apache.lucene.document.InetAddressPoint: java.net.InetAddress decode(byte[])>($r8) 
(assert true)
(define-const var97 (Array Int Int) (getAddress/1395180238 var3395)) ; Statement: $r10 = virtualinvoke r9.<java.net.InetAddress: byte[] getAddress()>() 
(define-const var3950 Int (getLength-Arr-Int-1 var97)) ; Statement: $i0 = lengthof $r10 
 ; Statement: if $i0 != 16 goto $r11 = virtualinvoke r9.<java.net.InetAddress: java.lang.String getHostAddress()>() 
(assert (not (not (= var3950 16)))) ; Negate: Cond: $i0 != 16  
(assert true)
;(assert (append/-1166366385 var3593!5 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3593!6 String)
(assert (str.prefixof var3593!5 var3593!6))
(assert true)
(define-const var324 String (getHostAddress/1493983505 var3395)) ; Statement: $r13 = virtualinvoke r9.<java.net.InetAddress: java.lang.String getHostAddress()>() 
(assert true)
;(assert (append/672562846 var3593!6 var324)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3593!7 String)
(assert (= var3593!7 (str.++ var3593!6 var324)))
(assert true)
;(assert (append/-1166366385 var3593!7 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3593!8 String)
(assert (str.prefixof var3593!7 var3593!8))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3593!8 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3593!9 String)
(assert (str.prefixof var3593!8 var3593!9))
(assert true)
(define-const var1804 String (toString/-2075883882 var3593!9)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2134-to-var2472=([org.apache.lucene.document.InetAddressPoint], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var2134-to-var2608=([org.apache.lucene.document.InetAddressPoint], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var2472-to-var813=([java.lang.Object], org.apache.lucene.util.BytesRef), var813_deepCopyOf/1921364877=([org.apache.lucene.util.BytesRef], org.apache.lucene.util.BytesRef), bytes/727234302=([org.apache.lucene.util.BytesRef], byte[]), var2134_decode/1627103539=([byte[]], java.net.InetAddress), getAddress/1395180238=([java.net.InetAddress], byte[]), getLength-Arr-Int-1=([byte[]], int), getHostAddress/1493983505=([java.net.InetAddress], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2134=org.apache.lucene.document.InetAddressPoint, var795=r1, var3593=$r0, var2472=java.lang.Object, var2816=$r2, var759=$r3, var2608=org.apache.lucene.document.Field, var2599=$r4, var2275=$r5, var813=org.apache.lucene.util.BytesRef, var2623=r6, var3713=$r7, var2342=$r8, var224=java.net.InetAddress, var3395=r9, var97=$r10, var3950=$i0, var324=$r13, var1804=$r12}
; {org.apache.lucene.document.InetAddressPoint=var2134, r1=var795, $r0=var3593, java.lang.Object=var2472, $r2=var2816, $r3=var759, org.apache.lucene.document.Field=var2608, $r4=var2599, $r5=var2275, org.apache.lucene.util.BytesRef=var813, r6=var2623, $r7=var3713, $r8=var2342, java.net.InetAddress=var224, r9=var3395, $r10=var97, $i0=var3950, $r13=var324, $r12=var1804}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.InetAddressPoint;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.InetAddressPoint: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.InetAddressPoint: java.lang.Object fieldsData>;	r6 = (org.apache.lucene.util.BytesRef) $r5;	$r7 = staticinvoke <org.apache.lucene.util.BytesRef: org.apache.lucene.util.BytesRef deepCopyOf(org.apache.lucene.util.BytesRef)>(r6);	$r8 = $r7.<org.apache.lucene.util.BytesRef: byte[] bytes>;	r9 = staticinvoke <org.apache.lucene.document.InetAddressPoint: java.net.InetAddress decode(byte[])>($r8);	$r10 = virtualinvoke r9.<java.net.InetAddress: byte[] getAddress()>();	$i0 = lengthof $r10;	if $i0 != 16 goto $r11 = virtualinvoke r9.<java.net.InetAddress: java.lang.String getHostAddress()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r13 = virtualinvoke r9.<java.net.InetAddress: java.lang.String getHostAddress()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 3