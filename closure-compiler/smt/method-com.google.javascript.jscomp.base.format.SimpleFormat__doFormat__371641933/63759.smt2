(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var165 0)
(declare-sort var3886 0)
(declare-sort var1635 0)
(declare-sort var2508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2508-init () var2508)
(declare-fun <init>/-1201525808 (var2508 String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var165 var165)
(declare-const null-String String)
(declare-const null-__Array__Int__var1635__ (Array Int var1635))
(declare-const null-var1635 var1635)
(declare-const var417 var165) ; Statement: r3 := @this: com.google.javascript.jscomp.base.format.SimpleFormat 
(assert (not (= var417 null-var165)))
(declare-const var1496 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1496 null-String)))
(declare-const var497 (Array Int var1635)) ; Statement: r4 := @parameter1: java.lang.Object[] 
(assert (not (= var497 null-__Array__Int__var1635__)))
(define-const var3696 var2508 var2508-init) ; Statement: $r9 = new com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser 
(assert true)
;(assert (<init>/-1201525808 var3696 var1496)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: void <init>(java.lang.String)>(r1) 

(declare-const var3696!1 var2508)
(declare-const var1496!1 String)
(define-const var844 Int 0) ; Statement: i7 = 0 
(define-const var1920 var1635 null-var1635) ; Statement: r6 = null 
(define-const var704 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var2489 Int (length/-134980193 var1496!1)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2379 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i0 goto return 
(assert (>= var2379 var2489)) ; Cond: i8 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2508-init=([], com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser), <init>/-1201525808=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser, java.lang.String], void), length/-134980193=([java.lang.String], int)}
; {var165=com.google.javascript.jscomp.base.format.SimpleFormat, var417=r3, var1496=r1, var3886=null_type, var1635=java.lang.Object, var497=r4, var2508=com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser, var3696=$r9, var844=i7, var1920=r6, var704=z1, var2489=i0, var2379=i8}
; {com.google.javascript.jscomp.base.format.SimpleFormat=var165, r3=var417, r1=var1496, null_type=var3886, java.lang.Object=var1635, r4=var497, com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser=var2508, $r9=var3696, i7=var844, r6=var1920, z1=var704, i0=var2489, i8=var2379}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.base.format.SimpleFormat;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Object[];	$r9 = new com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser;	specialinvoke $r9.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: void <init>(java.lang.String)>(r1);	i7 = 0;	r6 = null;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i8 = 0;	if i8 >= i0 goto return;	return
;block_num 3