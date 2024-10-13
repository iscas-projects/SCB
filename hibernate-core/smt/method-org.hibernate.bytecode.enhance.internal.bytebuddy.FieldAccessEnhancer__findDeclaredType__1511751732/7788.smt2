(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3079 0)
(declare-sort var3902 0)
(declare-sort var48 0)
(declare-sort var2925 0)
(declare-sort var1870 0)
(declare-sort var1935 0)
(declare-sort var2466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun classPool/398000916 (var3079) var48)
(declare-fun var48_describe/-1959134159 (var48 String) var2925)
(declare-fun var2925_isResolved/-865328968 (var2925) Bool)
(declare-fun arr-var1870-init () (Array Int var1870))
(declare-fun cast-from-String-to-var1870 (String) var1870)
(declare-fun String_format/1339386452 (String (Array Int var1870)) String)
(declare-fun var1935-init () var1935)
(declare-fun <init>/-1582507930 (var1935 String) void)
(declare-fun cast-from-var1935-to-var2466 (var1935) var2466)
(declare-const null-var3079 var3079)
(declare-const null-String String)
(declare-const null-__Array__Int__var1870__ (Array Int var1870))
(declare-const var816 var3079) ; Statement: r2 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer 
(assert (not (= var816 null-var3079)))
(declare-const var2933 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2933 null-String)))
(assert true)
(define-const var3471 String (replace/1524665721 var2933 47 46)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(define-const var3196 var48 (classPool/398000916 var816)) ; Statement: $r3 = r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer: net.bytebuddy.pool.TypePool classPool> 
(define-const var448 var2925 (var48_describe/-1959134159 var3196 var3471)) ; Statement: r4 = interfaceinvoke $r3.<net.bytebuddy.pool.TypePool: net.bytebuddy.pool.TypePool$Resolution describe(java.lang.String)>(r1) 
(define-const var265 Bool (var2925_isResolved/-865328968 var448)) ; Statement: $z0 = interfaceinvoke r4.<net.bytebuddy.pool.TypePool$Resolution: boolean isResolved()>() 
 ; Statement: if $z0 != 0 goto $r5 = interfaceinvoke r4.<net.bytebuddy.pool.TypePool$Resolution: net.bytebuddy.description.type.TypeDescription resolve()>() 
(assert (not (not (= (ite var265 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var877 (Array Int var1870) arr-var1870-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var877!1 (Array Int var1870))
(assert (not (= var877!1 null-__Array__Int__var1870__)))
(assert (= (select var877!1 0) (cast-from-String-to-var1870 var3471))) ; Statement: $r6[0] = r1 
(define-const var2937 String (String_format/1339386452 "Unable to perform extended enhancement - Unable to locate [%s]" var877!1)) ; Statement: r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to perform extended enhancement - Unable to locate [%s]", $r6) 
(define-const var1923 var1935 var1935-init) ; Statement: $r9 = new org.hibernate.bytecode.enhance.spi.EnhancementException 
(assert true)
;(assert (<init>/-1582507930 var1923 var2937)) ; Statement: specialinvoke $r9.<org.hibernate.bytecode.enhance.spi.EnhancementException: void <init>(java.lang.String)>(r7) 

(declare-const var1923!1 var1935)
(declare-const var2937!1 String)
(define-const var3294 var2466 (cast-from-var1935-to-var2466 var1923!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), classPool/398000916=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer], net.bytebuddy.pool.TypePool), var48_describe/-1959134159=([net.bytebuddy.pool.TypePool, java.lang.String], net.bytebuddy.pool.TypePool$Resolution), var2925_isResolved/-865328968=([net.bytebuddy.pool.TypePool$Resolution], boolean), arr-var1870-init=([], java.lang.Object[]), cast-from-String-to-var1870=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var1935-init=([], org.hibernate.bytecode.enhance.spi.EnhancementException), <init>/-1582507930=([org.hibernate.bytecode.enhance.spi.EnhancementException, java.lang.String], void), cast-from-var1935-to-var2466=([org.hibernate.bytecode.enhance.spi.EnhancementException], java.lang.Throwable)}
; {var3079=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer, var816=r2, var2933=r0, var3902=null_type, var3471=r1, var48=net.bytebuddy.pool.TypePool, var3196=$r3, var2925=net.bytebuddy.pool.TypePool$Resolution, var448=r4, var265=$z0, var1870=java.lang.Object, var877=$r6, var2937=r7, var1935=org.hibernate.bytecode.enhance.spi.EnhancementException, var1923=$r9, var2466=java.lang.Throwable, var3294=$r10}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer=var3079, r2=var816, r0=var2933, null_type=var3902, r1=var3471, net.bytebuddy.pool.TypePool=var48, $r3=var3196, net.bytebuddy.pool.TypePool$Resolution=var2925, r4=var448, $z0=var265, java.lang.Object=var1870, $r6=var877, r7=var2937, org.hibernate.bytecode.enhance.spi.EnhancementException=var1935, $r9=var1923, java.lang.Throwable=var2466, $r10=var3294}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r3 = r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer: net.bytebuddy.pool.TypePool classPool>;	r4 = interfaceinvoke $r3.<net.bytebuddy.pool.TypePool: net.bytebuddy.pool.TypePool$Resolution describe(java.lang.String)>(r1);	$z0 = interfaceinvoke r4.<net.bytebuddy.pool.TypePool$Resolution: boolean isResolved()>();	if $z0 != 0 goto $r5 = interfaceinvoke r4.<net.bytebuddy.pool.TypePool$Resolution: net.bytebuddy.description.type.TypeDescription resolve()>();	$r6 = newarray (java.lang.Object)[1];	$r6[0] = r1;	r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to perform extended enhancement - Unable to locate [%s]", $r6);	$r9 = new org.hibernate.bytecode.enhance.spi.EnhancementException;	specialinvoke $r9.<org.hibernate.bytecode.enhance.spi.EnhancementException: void <init>(java.lang.String)>(r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2