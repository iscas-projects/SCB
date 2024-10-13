(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var58 0)
(declare-sort var2821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var58_subPreGbk/-2128517246 (String Int Bool) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2821) String)
(declare-fun cast-from-String-to-var2821 (String) var2821)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var745 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var745 null-String)))
(declare-const var786 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var786 null-Int)))
(declare-const var1238 String) ; Statement: r3 := @parameter2: java.lang.CharSequence 
(assert (not (= var1238 null-String)))
(define-const var3946 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3946)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3946!1 String)
(assert (= var3946!1 ""))
(define-const var910 String (var58_subPreGbk/-2128517246 var745 var786 (ite (= 1 1) true false))) ; Statement: $r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String subPreGbk(java.lang.CharSequence,int,boolean)>(r1, i0, 1) 
(assert true)
(define-const var355 String (append/672562846 var3946!1 var910)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3946!2 String)
(assert (= var3946!2 (str.++ var3946!1 var910)))
(assert true)
(define-const var171 String (append/-1031950772 var355 (cast-from-String-to-var2821 var1238))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var355!1 String)
(assert (str.prefixof var355 var355!1))
(assert true)
(define-const var138 String (toString/-2075883882 var171)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var58_subPreGbk/-2128517246=([java.lang.CharSequence, int, boolean], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var2821=([java.lang.CharSequence], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var745=r1, var786=i0, var1238=r3, var3946=$r0, var58=cn.hutool.core.text.CharSequenceUtil, var910=$r2, var355=$r4, var2821=java.lang.Object, var171=$r5, var138=$r6}
; {r1=var745, i0=var786, r3=var1238, $r0=var3946, cn.hutool.core.text.CharSequenceUtil=var58, $r2=var910, $r4=var355, java.lang.Object=var2821, $r5=var171, $r6=var138}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	r3 := @parameter2: java.lang.CharSequence;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String subPreGbk(java.lang.CharSequence,int,boolean)>(r1, i0, 1);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1