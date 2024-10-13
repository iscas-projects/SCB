(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1291 0)
(declare-sort var2571 0)
(declare-sort var3769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2571-init () (Array Int var2571))
(declare-fun var3769_notNull/515149844 (var2571 String (Array Int var2571)) var2571)
(declare-fun cast-from-String-to-var2571 (String) var2571)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3144 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3144 null-String)))
(declare-const var2523 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2523 null-Int)))
(define-const var3325 (Array Int var2571) arr-var2571-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var3769_notNull/515149844 (cast-from-String-to-var2571 var3144) "message must be not null!" var3325)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "message must be not null!", $r1) 

(declare-const var3144!1 String)
(declare-const var2195 String)
(declare-const var3325!1 (Array Int var2571))
(assert true)
(define-const var1204 Int (length/-134980193 var3144!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var1748 (Array Int Int) (toCharArray/415275702 var3144!1)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var3105 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r3 = new java.lang.String 
(assert (>= var3105 var1204)) ; Cond: i4 >= i0 
(define-const var3742 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3742 var1748)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[])>(r2) 

(declare-const var3742!1 String)
(declare-const var1748!1 (Array Int Int))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2571-init=([], java.lang.Object[]), var3769_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var2571=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), toCharArray/415275702=([java.lang.String], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3144=r0, var1291=null_type, var2523=i2, var2571=java.lang.Object, var3325=$r1, var3769=cn.hutool.core.lang.Assert, var2195="message must be not null!", var1204=i0, var1748=r2, var3105=i4, var3742=$r3}
; {r0=var3144, null_type=var1291, i2=var2523, java.lang.Object=var2571, $r1=var3325, cn.hutool.core.lang.Assert=var3769, "message must be not null!"=var2195, i0=var1204, r2=var1748, i4=var3105, $r3=var3742}
;seq <java.lang.String: int length()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "message must be not null!", $r1);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i4 = 0;	if i4 >= i0 goto $r3 = new java.lang.String;	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[])>(r2);	return $r3
;block_num 3