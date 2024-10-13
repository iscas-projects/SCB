(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1012 0)
(declare-sort var2649 0)
(declare-sort var3969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2649-init () (Array Int var2649))
(declare-fun var3969_notNull/515149844 (var2649 String (Array Int var2649)) var2649)
(declare-fun cast-from-String-to-var2649 (String) var2649)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1162 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1162 null-String)))
(declare-const var354 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var354 null-Int)))
(define-const var3370 (Array Int var2649) arr-var2649-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var3969_notNull/515149844 (cast-from-String-to-var2649 var1162) "cipherText must be not null!" var3370)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "cipherText must be not null!", $r1) 

(declare-const var1162!1 String)
(declare-const var170 String)
(declare-const var3370!1 (Array Int var2649))
(assert true)
(define-const var3974 Int (length/-134980193 var1162!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var1897 (Array Int Int) (toCharArray/415275702 var1162!1)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2239 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r3 = new java.lang.String 
(assert (>= var2239 var3974)) ; Cond: i4 >= i0 
(define-const var3342 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3342 var1897)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[])>(r2) 

(declare-const var3342!1 String)
(declare-const var1897!1 (Array Int Int))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2649-init=([], java.lang.Object[]), var3969_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var2649=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), toCharArray/415275702=([java.lang.String], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var1162=r0, var1012=null_type, var354=i2, var2649=java.lang.Object, var3370=$r1, var3969=cn.hutool.core.lang.Assert, var170="cipherText must be not null!", var3974=i0, var1897=r2, var2239=i4, var3342=$r3}
; {r0=var1162, null_type=var1012, i2=var354, java.lang.Object=var2649, $r1=var3370, cn.hutool.core.lang.Assert=var3969, "cipherText must be not null!"=var170, i0=var3974, r2=var1897, i4=var2239, $r3=var3342}
;seq <java.lang.String: int length()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "cipherText must be not null!", $r1);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i4 = 0;	if i4 >= i0 goto $r3 = new java.lang.String;	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[])>(r2);	return $r3
;block_num 3