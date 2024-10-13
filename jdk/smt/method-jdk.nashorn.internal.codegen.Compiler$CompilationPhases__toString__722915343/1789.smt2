(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var715 0)
(declare-sort var3267 0)
(declare-sort var2723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun phases/23954122 (var715) var2723)
(declare-fun var2723_iterator/-912451715 (var2723) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var715 var715)
(declare-const null-String String)
(declare-const var3695 var715) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.Compiler$CompilationPhases 
(assert (not (= var3695 null-var715)))
(declare-const var1057 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var1057 null-String)))
(define-const var3032 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3032)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3032!1 String)
(assert (= var3032!1 ""))
(define-const var5 var2723 (phases/23954122 var3695)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: java.util.List phases> 
(define-const var237 Iterator (var2723_iterator/-912451715 var5)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2299 Bool (Iterator_hasNext/-1669924200 var237)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2299 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3165 String (toString/-2075883882 var3032!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), phases/23954122=([jdk.nashorn.internal.codegen.Compiler$CompilationPhases], java.util.List), var2723_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var715=jdk.nashorn.internal.codegen.Compiler$CompilationPhases, var3695=r1, var1057=r7, var3267=null_type, var3032=$r0, var2723=java.util.List, var5=$r2, var237=r3, var2299=$z0, var3165=$r4}
; {jdk.nashorn.internal.codegen.Compiler$CompilationPhases=var715, r1=var3695, r7=var1057, null_type=var3267, $r0=var3032, java.util.List=var2723, $r2=var5, r3=var237, $z0=var2299, $r4=var3165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.Compiler$CompilationPhases;	r7 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: java.util.List phases>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3