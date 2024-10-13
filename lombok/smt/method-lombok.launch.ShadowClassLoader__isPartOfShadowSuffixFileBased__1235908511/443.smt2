(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1905 0)
(declare-sort var22 0)
(declare-sort var499 0)
(declare-sort var2382 0)
(declare-sort var377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun String_valueOf/-333372740 (var499) String)
(declare-fun cast-from-String-to-var499 (String) var499)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fileRootCache/1139179338 (var1905) var2382)
(declare-fun var2382_get/1088891777 (var2382 var499) var499)
(declare-fun cast-from-var499-to-var377 (var499) var377)
(declare-fun booleanValue/-1820462562 (var377) Bool)
(declare-const null-var1905 var1905)
(declare-const null-String String)
(declare-const null-var377 var377)
(declare-const var2679 var1905) ; Statement: r7 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2679 null-var1905)))
(declare-const var2879 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2879 null-String)))
(declare-const var1993 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1993 null-String)))
(define-const var2825 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var142 String (String_valueOf/-333372740 (cast-from-String-to-var499 var2879))) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (<init>/-1061048412 var2825 var142)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var2825!1 String)
(assert (= var2825!1 var142))
(assert true)
(define-const var3017 String (append/672562846 var2825!1 "::")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::") 
(declare-const var2825!2 String)
(assert (= var2825!2 (str.++ var2825!1 "::")))
(assert true)
(define-const var2893 String (append/672562846 var3017 var1993)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3017!1 String)
(assert (= var3017!1 (str.++ var3017 var1993)))
(assert true)
(define-const var1304 String (toString/-2075883882 var2893)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1813 var2382 (fileRootCache/1139179338 var2679)) ; Statement: $r8 = r7.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> 
(define-const var426 var499 (var2382_get/1088891777 var1813 (cast-from-String-to-var499 var1304))) ; Statement: $r9 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>(r6) 
(define-const var2139 var377 (cast-from-var499-to-var377 var426)) ; Statement: r10 = (java.lang.Boolean) $r9 
 ; Statement: if r10 == null goto $r11 = new java.io.File 
(assert (not (= var2139 null-var377))) ; Negate: Cond: r10 == null  
(assert true)
(define-const var806 Bool (booleanValue/-1820462562 var2139)) ; Statement: $z1 = virtualinvoke r10.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var499=([java.lang.String], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fileRootCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), var2382_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var499-to-var377=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean)}
; {var1905=lombok.launch.ShadowClassLoader, var2679=r7, var2879=r1, var22=null_type, var1993=r3, var2825=$r0, var499=java.lang.Object, var142=$r2, var3017=$r4, var2893=$r5, var1304=r6, var2382=java.util.Map, var1813=$r8, var426=$r9, var377=java.lang.Boolean, var2139=r10, var806=$z1}
; {lombok.launch.ShadowClassLoader=var1905, r7=var2679, r1=var2879, null_type=var22, r3=var1993, $r0=var2825, java.lang.Object=var499, $r2=var142, $r4=var3017, $r5=var2893, r6=var1304, java.util.Map=var2382, $r8=var1813, $r9=var426, java.lang.Boolean=var377, r10=var2139, $z1=var806}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r7.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache>;	$r9 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>(r6);	r10 = (java.lang.Boolean) $r9;	if r10 == null goto $r11 = new java.io.File;	$z1 = virtualinvoke r10.<java.lang.Boolean: boolean booleanValue()>();	return $z1
;block_num 2