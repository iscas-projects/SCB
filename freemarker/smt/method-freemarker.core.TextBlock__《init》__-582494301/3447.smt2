(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3725 0)
(declare-sort var3088 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/777863926 (var3725 (Array Int Int) Bool) void)
(declare-const null-var3725 var3725)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3091 var3725) ; Statement: r0 := @this: freemarker.core.TextBlock 
(assert (not (= var3091 null-var3725)))
(declare-const var1543 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1543 null-String)))
(declare-const var3747 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3747 null-Bool)))
(assert true)
(define-const var1100 (Array Int Int) (toCharArray/415275702 var1543)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/777863926 var3091 var1100 var3747)) ; Statement: specialinvoke r0.<freemarker.core.TextBlock: void <init>(char[],boolean)>($r2, z0) 

(declare-const var3091!1 var3725)
(declare-const var1100!1 (Array Int Int))
(declare-const var3747!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), <init>/777863926=([freemarker.core.TextBlock, char[], boolean], void)}
; {var3725=freemarker.core.TextBlock, var3091=r0, var1543=r1, var3088=null_type, var3747=z0, var1100=$r2}
; {freemarker.core.TextBlock=var3725, r0=var3091, r1=var1543, null_type=var3088, z0=var3747, $r2=var1100}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: freemarker.core.TextBlock;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	specialinvoke r0.<freemarker.core.TextBlock: void <init>(char[],boolean)>($r2, z0);	return
;block_num 1