(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2395 0)
(declare-sort var980 0)
(declare-sort var706 0)
(declare-sort var3827 0)
(declare-sort var3599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun matcher/468719934 (var980 String) var3827)
(declare-fun matches/-149940873 (var3827) Bool)
(declare-fun var3599-init () var3599)
(declare-fun <init>/868527573 (var3599 String) void)
(declare-const null-String String)
(declare-const var706-missingAuthPattern var980)
(declare-const var681 String) ; Statement: r17 := @parameter0: java.lang.String 
(assert (not (= var681 null-String)))
(assert true)
(define-const var3175 Bool (contains/1009244746 var681 (cast-from-String-to-String "\u005c"))) ; Statement: $z0 = virtualinvoke r17.<java.lang.String: boolean contains(java.lang.CharSequence)>("\\") 
 ; Statement: if $z0 == 0 goto $i6 = virtualinvoke r17.<java.lang.String: int indexOf(int)>(35) 
(assert (= (ite var3175 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var285 Int (indexOf/-1037706067 var681 35)) ; Statement: $i6 = virtualinvoke r17.<java.lang.String: int indexOf(int)>(35) 
(define-const var2778 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i6 == $i9 goto $i0 = virtualinvoke r17.<java.lang.String: int length()>() 
(assert (= var285 var2778)) ; Cond: $i6 == $i9 
(assert true)
(define-const var3118 Int (length/-134980193 var681)) ; Statement: $i0 = virtualinvoke r17.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r20 = <org.apache.poi.openxml4j.opc.PackagingURIHelper: java.util.regex.Pattern missingAuthPattern> 
(assert (<= var3118 0)) ; Cond: $i0 <= 0 
(define-const var3382 var980 var706-missingAuthPattern) ; Statement: $r20 = <org.apache.poi.openxml4j.opc.PackagingURIHelper: java.util.regex.Pattern missingAuthPattern> 
(assert true)
(define-const var3289 var3827 (matcher/468719934 var3382 (cast-from-String-to-String var681))) ; Statement: $r21 = virtualinvoke $r20.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r17) 
(assert true)
(define-const var883 Bool (matches/-149940873 var3289)) ; Statement: $z2 = virtualinvoke $r21.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z2 == 0 goto $r26 = new java.net.URI 
(assert (= (ite var883 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2465 var3599 var3599-init) ; Statement: $r26 = new java.net.URI 
(assert true)
;(assert (<init>/868527573 var2465 var681)) ; Statement: specialinvoke $r26.<java.net.URI: void <init>(java.lang.String)>(r17) 

(declare-const var2465!1 var3599)
(declare-const var681!1 String)
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), matches/-149940873=([java.util.regex.Matcher], boolean), var3599-init=([], java.net.URI), <init>/868527573=([java.net.URI, java.lang.String], void)}
; {var681=r17, var2395=null_type, var3175=$z0, var285=$i6, var2778=$i9, var3118=$i0, var980=java.util.regex.Pattern, var706=org.apache.poi.openxml4j.opc.PackagingURIHelper, var3382=$r20, var3827=java.util.regex.Matcher, var3289=$r21, var883=$z2, var3599=java.net.URI, var2465=$r26}
; {r17=var681, null_type=var2395, $z0=var3175, $i6=var285, $i9=var2778, $i0=var3118, java.util.regex.Pattern=var980, org.apache.poi.openxml4j.opc.PackagingURIHelper=var706, $r20=var3382, java.util.regex.Matcher=var3827, $r21=var3289, $z2=var883, java.net.URI=var3599, $r26=var2465}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r17 := @parameter0: java.lang.String;	$z0 = virtualinvoke r17.<java.lang.String: boolean contains(java.lang.CharSequence)>("\\");	if $z0 == 0 goto $i6 = virtualinvoke r17.<java.lang.String: int indexOf(int)>(35);	$i6 = virtualinvoke r17.<java.lang.String: int indexOf(int)>(35);	$i9 = (int) -1;	if $i6 == $i9 goto $i0 = virtualinvoke r17.<java.lang.String: int length()>();	$i0 = virtualinvoke r17.<java.lang.String: int length()>();	if $i0 <= 0 goto $r20 = <org.apache.poi.openxml4j.opc.PackagingURIHelper: java.util.regex.Pattern missingAuthPattern>;	$r20 = <org.apache.poi.openxml4j.opc.PackagingURIHelper: java.util.regex.Pattern missingAuthPattern>;	$r21 = virtualinvoke $r20.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r17);	$z2 = virtualinvoke $r21.<java.util.regex.Matcher: boolean matches()>();	if $z2 == 0 goto $r26 = new java.net.URI;	$r26 = new java.net.URI;	specialinvoke $r26.<java.net.URI: void <init>(java.lang.String)>(r17);	return $r26
;block_num 5