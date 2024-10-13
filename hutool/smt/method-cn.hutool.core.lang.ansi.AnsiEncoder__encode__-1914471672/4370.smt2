(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3452 0)
(declare-sort var273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var273_buildEnabled/215071664 (String (Array Int var3452)) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__var3452__ (Array Int var3452))
(declare-const var2029 (Array Int var3452)) ; Statement: r1 := @parameter0: java.lang.Object[] 
(assert (not (= var2029 null-__Array__Int__var3452__)))
(define-const var1180 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1180)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1180!1 String)
(assert (= var1180!1 ""))
;(assert (var273_buildEnabled/215071664 var1180!1 var2029)) ; Statement: staticinvoke <cn.hutool.core.lang.ansi.AnsiEncoder: void buildEnabled(java.lang.StringBuilder,java.lang.Object[])>($r0, r1) 

(declare-const var1180!2 String)
(declare-const var2029!1 (Array Int var3452))
(assert true)
(define-const var2841 String (toString/-2075883882 var1180!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var273_buildEnabled/215071664=([java.lang.StringBuilder, java.lang.Object[]], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3452=java.lang.Object, var2029=r1, var1180=$r0, var273=cn.hutool.core.lang.ansi.AnsiEncoder, var2841=$r2}
; {java.lang.Object=var3452, r1=var2029, $r0=var1180, cn.hutool.core.lang.ansi.AnsiEncoder=var273, $r2=var2841}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	staticinvoke <cn.hutool.core.lang.ansi.AnsiEncoder: void buildEnabled(java.lang.StringBuilder,java.lang.Object[])>($r0, r1);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1