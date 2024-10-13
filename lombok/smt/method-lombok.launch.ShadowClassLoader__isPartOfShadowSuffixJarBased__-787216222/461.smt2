(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1701 0)
(declare-sort var3550 0)
(declare-sort var67 0)
(declare-sort var3169 0)
(declare-sort var3047 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun String_valueOf/-333372740 (var67) String)
(declare-fun cast-from-String-to-var67 (String) var67)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun jarLocCache/1139179338 (var1701) var3169)
(declare-fun var3169_get/1088891777 (var3169 var67) var67)
(declare-fun cast-from-var67-to-var3047 (var67) var3047)
(declare-fun booleanValue/-1820462562 (var3047) Bool)
(declare-const null-var1701 var1701)
(declare-const null-String String)
(declare-const null-var3047 var3047)
(declare-const var2285 var1701) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2285 null-var1701)))
(declare-const var3046 String) ; Statement: r27 := @parameter0: java.lang.String 
(assert (not (= var3046 null-String)))
(declare-const var2318 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2318 null-String)))
(define-const var1892 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var1617 String (String_valueOf/-333372740 (cast-from-String-to-var67 var3046))) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r27) 
(assert true)
;(assert (<init>/-1061048412 var1892 var1617)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r1) 
(declare-const var1892!1 String)
(assert (= var1892!1 var1617))
(assert true)
(define-const var3741 String (append/672562846 var1892!1 "::")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::") 
(declare-const var1892!2 String)
(assert (= var1892!2 (str.++ var1892!1 "::")))
(assert true)
(define-const var605 String (append/672562846 var3741 var2318)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3741!1 String)
(assert (= var3741!1 (str.++ var3741 var2318)))
(assert true)
(define-const var3737 String (toString/-2075883882 var605)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3285 var3169 (jarLocCache/1139179338 var2285)) ; Statement: $r7 = r6.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> 
(define-const var928 var67 (var3169_get/1088891777 var3285 (cast-from-String-to-var67 var3737))) ; Statement: $r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r5) 
(define-const var1166 var3047 (cast-from-var67-to-var3047 var928)) ; Statement: r9 = (java.lang.Boolean) $r8 
 ; Statement: if r9 == null goto $z0 = virtualinvoke r27.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
(assert (not (= var1166 null-var3047))) ; Negate: Cond: r9 == null  
(assert true)
(define-const var2770 Bool (booleanValue/-1820462562 var1166)) ; Statement: $z3 = virtualinvoke r9.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var67=([java.lang.String], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), jarLocCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), var3169_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var67-to-var3047=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean)}
; {var1701=lombok.launch.ShadowClassLoader, var2285=r6, var3046=r27, var3550=null_type, var2318=r2, var1892=$r0, var67=java.lang.Object, var1617=$r1, var3741=$r3, var605=$r4, var3737=r5, var3169=java.util.Map, var3285=$r7, var928=$r8, var3047=java.lang.Boolean, var1166=r9, var2770=$z3}
; {lombok.launch.ShadowClassLoader=var1701, r6=var2285, r27=var3046, null_type=var3550, r2=var2318, $r0=var1892, java.lang.Object=var67, $r1=var1617, $r3=var3741, $r4=var605, r5=var3737, java.util.Map=var3169, $r7=var3285, $r8=var928, java.lang.Boolean=var3047, r9=var1166, $z3=var2770}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r27 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r27);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache>;	$r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r5);	r9 = (java.lang.Boolean) $r8;	if r9 == null goto $z0 = virtualinvoke r27.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	$z3 = virtualinvoke r9.<java.lang.Boolean: boolean booleanValue()>();	return $z3
;block_num 2