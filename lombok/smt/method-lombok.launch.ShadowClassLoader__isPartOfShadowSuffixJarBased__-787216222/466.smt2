(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var774 0)
(declare-sort var1159 0)
(declare-sort var1776 0)
(declare-sort var2700 0)
(declare-sort var3091 0)
(declare-sort var2253 0)
(declare-sort var1190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun String_valueOf/-333372740 (var1776) String)
(declare-fun cast-from-String-to-var1776 (String) var1776)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun jarLocCache/1139179338 (var774) var2700)
(declare-fun var2700_get/1088891777 (var2700 var1776) var1776)
(declare-fun cast-from-var1776-to-var3091 (var1776) var3091)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2253-init () var2253)
(declare-fun var3091_valueOf/1602327315 (Bool) var3091)
(declare-fun var2700_put/1464166817 (var2700 var1776 var1776) var1776)
(declare-fun cast-from-var3091-to-var1776 (var3091) var1776)
(declare-const null-var774 var774)
(declare-const null-String String)
(declare-const null-var3091 var3091)
(declare-const null-var1190 var1190)
(declare-const var1310 var774) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1310 null-var774)))
(declare-const var2909 String) ; Statement: r27 := @parameter0: java.lang.String 
(assert (not (= var2909 null-String)))
(declare-const var3829 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3829 null-String)))
(define-const var3842 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2644 String (String_valueOf/-333372740 (cast-from-String-to-var1776 var2909))) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r27) 
(assert true)
;(assert (<init>/-1061048412 var3842 var2644)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r1) 
(declare-const var3842!1 String)
(assert (= var3842!1 var2644))
(assert true)
(define-const var2266 String (append/672562846 var3842!1 "::")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::") 
(declare-const var3842!2 String)
(assert (= var3842!2 (str.++ var3842!1 "::")))
(assert true)
(define-const var2762 String (append/672562846 var2266 var3829)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2266!1 String)
(assert (= var2266!1 (str.++ var2266 var3829)))
(assert true)
(define-const var727 String (toString/-2075883882 var2762)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3115 var2700 (jarLocCache/1139179338 var1310)) ; Statement: $r7 = r6.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> 
(define-const var444 var1776 (var2700_get/1088891777 var3115 (cast-from-String-to-var1776 var727))) ; Statement: $r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r5) 
(define-const var181 var3091 (cast-from-var1776-to-var3091 var444)) ; Statement: r9 = (java.lang.Boolean) $r8 
 ; Statement: if r9 == null goto $z0 = virtualinvoke r27.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
(assert (= var181 null-var3091)) ; Cond: r9 == null 
(assert true)
(define-const var803 Bool (startsWith/-1785782452 var2909 "file:/")) ; Statement: $z0 = virtualinvoke r27.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
 ; Statement: if $z0 == 0 goto $r10 = new java.io.FileInputStream 
(assert (= (ite var803 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3411 var2253 var2253-init) ; Statement: $r10 = new java.io.FileInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2673 var1190) ; Statement: $r22 := @caughtexception 
(assert (not (= var2673 null-var1190)))
(define-const var420 var2700 (jarLocCache/1139179338 var1310)) ; Statement: $r23 = r6.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> 
(define-const var3499 var3091 (var3091_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
;(assert (var2700_put/1464166817 var420 (cast-from-String-to-var1776 var727) (cast-from-var3091-to-var1776 var3499))) ; Statement: interfaceinvoke $r23.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r5, $r24) 

(declare-const var420!1 var2700)
(declare-const var727!1 String)
(declare-const var3499!1 var3091)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var1776=([java.lang.String], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), jarLocCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), var2700_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var1776-to-var3091=([java.lang.Object], java.lang.Boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2253-init=([], java.io.FileInputStream), var3091_valueOf/1602327315=([boolean], java.lang.Boolean), var2700_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3091-to-var1776=([java.lang.Boolean], java.lang.Object)}
; {var774=lombok.launch.ShadowClassLoader, var1310=r6, var2909=r27, var1159=null_type, var3829=r2, var3842=$r0, var1776=java.lang.Object, var2644=$r1, var2266=$r3, var2762=$r4, var727=r5, var2700=java.util.Map, var3115=$r7, var444=$r8, var3091=java.lang.Boolean, var181=r9, var803=$z0, var2253=java.io.FileInputStream, var3411=$r10, var1190=java.io.FileNotFoundException, var2673=$r22, var420=$r23, var3499=$r24}
; {lombok.launch.ShadowClassLoader=var774, r6=var1310, r27=var2909, null_type=var1159, r2=var3829, $r0=var3842, java.lang.Object=var1776, $r1=var2644, $r3=var2266, $r4=var2762, r5=var727, java.util.Map=var2700, $r7=var3115, $r8=var444, java.lang.Boolean=var3091, r9=var181, $z0=var803, java.io.FileInputStream=var2253, $r10=var3411, java.io.FileNotFoundException=var1190, $r22=var2673, $r23=var420, $r24=var3499}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r27 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r27);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache>;	$r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r5);	r9 = (java.lang.Boolean) $r8;	if r9 == null goto $z0 = virtualinvoke r27.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	$z0 = virtualinvoke r27.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	if $z0 == 0 goto $r10 = new java.io.FileInputStream;	$r10 = new java.io.FileInputStream;	$r22 := @caughtexception;	$r23 = r6.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache>;	$r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	interfaceinvoke $r23.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r5, $r24);	return 0
;block_num 4