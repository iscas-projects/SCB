(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2932 0)
(declare-sort var2513 0)
(declare-sort var3047 0)
(declare-sort var2143 0)
(declare-sort var3751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2513) ClassObject)
(declare-fun cast-from-var2932-to-var2513 (var2932) var2513)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var3047) String)
(declare-fun cast-from-var2932-to-var3047 (var2932) var3047)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var3047) var2513)
(declare-fun cast-from-var2513-to-var2143 (var2513) var2143)
(declare-fun bytes/727234302 (var2143) (Array Int Int))
(declare-fun var3751_decode/-1989859676 ((Array Int Int) Int) Float32)
(declare-fun append/991902413 (String Float32) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2932 var2932)
(declare-const var3654 var2932) ; Statement: r1 := @this: org.apache.lucene.document.XYPointField 
(assert (not (= var3654 null-var2932)))
(define-const var1178 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1178)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1178!1 String)
(assert (= var1178!1 ""))
(assert true)
(define-const var1802 ClassObject (getClass/1258963082 (cast-from-var2932-to-var2513 var3654))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var125 String (getSimpleName/-390194377 var1802)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var1178!1 var125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1178!2 String)
(assert (= var1178!2 (str.++ var1178!1 var125)))
(assert true)
;(assert (append/672562846 var1178!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var1178!3 String)
(assert (= var1178!3 (str.++ var1178!2 " <")))
(define-const var554 String (name/835448125 (cast-from-var2932-to-var3047 var3654))) ; Statement: $r4 = r1.<org.apache.lucene.document.XYPointField: java.lang.String name> 
(assert true)
;(assert (append/672562846 var1178!3 var554)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1178!4 String)
(assert (= var1178!4 (str.++ var1178!3 var554)))
(assert true)
;(assert (append/-1166366385 var1178!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1178!5 String)
(assert (str.prefixof var1178!4 var1178!5))
(define-const var484 var2513 (fieldsData/835448125 (cast-from-var2932-to-var3047 var3654))) ; Statement: $r5 = r1.<org.apache.lucene.document.XYPointField: java.lang.Object fieldsData> 
(define-const var2230 var2143 (cast-from-var2513-to-var2143 var484)) ; Statement: $r6 = (org.apache.lucene.util.BytesRef) $r5 
(define-const var1074 (Array Int Int) (bytes/727234302 var2230)) ; Statement: r7 = $r6.<org.apache.lucene.util.BytesRef: byte[] bytes> 
(define-const var2485 Float32 (var3751_decode/-1989859676 var1074 0)) ; Statement: $f0 = staticinvoke <org.apache.lucene.geo.XYEncodingUtils: float decode(byte[],int)>(r7, 0) 
(assert true)
;(assert (append/991902413 var1178!5 var2485)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0) 
(declare-const var1178!6 String)
(assert (str.prefixof var1178!5 var1178!6))
(assert true)
;(assert (append/-1166366385 var1178!6 44)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var1178!7 String)
(assert (str.prefixof var1178!6 var1178!7))
(define-const var2783 Float32 (var3751_decode/-1989859676 var1074 4)) ; Statement: $f1 = staticinvoke <org.apache.lucene.geo.XYEncodingUtils: float decode(byte[],int)>(r7, 4) 
(assert true)
;(assert (append/991902413 var1178!7 var2783)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f1) 
(declare-const var1178!8 String)
(assert (str.prefixof var1178!7 var1178!8))
(assert true)
;(assert (append/-1166366385 var1178!8 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1178!9 String)
(assert (str.prefixof var1178!8 var1178!9))
(assert true)
(define-const var2414 String (toString/-2075883882 var1178!9)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2932-to-var2513=([org.apache.lucene.document.XYPointField], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var2932-to-var3047=([org.apache.lucene.document.XYPointField], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var2513-to-var2143=([java.lang.Object], org.apache.lucene.util.BytesRef), bytes/727234302=([org.apache.lucene.util.BytesRef], byte[]), var3751_decode/-1989859676=([byte[], int], float), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2932=org.apache.lucene.document.XYPointField, var3654=r1, var1178=$r0, var2513=java.lang.Object, var1802=$r2, var125=$r3, var3047=org.apache.lucene.document.Field, var554=$r4, var484=$r5, var2143=org.apache.lucene.util.BytesRef, var2230=$r6, var1074=r7, var3751=org.apache.lucene.geo.XYEncodingUtils, var2485=$f0, var2783=$f1, var2414=$r8}
; {org.apache.lucene.document.XYPointField=var2932, r1=var3654, $r0=var1178, java.lang.Object=var2513, $r2=var1802, $r3=var125, org.apache.lucene.document.Field=var3047, $r4=var554, $r5=var484, org.apache.lucene.util.BytesRef=var2143, $r6=var2230, r7=var1074, org.apache.lucene.geo.XYEncodingUtils=var3751, $f0=var2485, $f1=var2783, $r8=var2414}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.XYPointField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.XYPointField: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.XYPointField: java.lang.Object fieldsData>;	$r6 = (org.apache.lucene.util.BytesRef) $r5;	r7 = $r6.<org.apache.lucene.util.BytesRef: byte[] bytes>;	$f0 = staticinvoke <org.apache.lucene.geo.XYEncodingUtils: float decode(byte[],int)>(r7, 0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$f1 = staticinvoke <org.apache.lucene.geo.XYEncodingUtils: float decode(byte[],int)>(r7, 4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1