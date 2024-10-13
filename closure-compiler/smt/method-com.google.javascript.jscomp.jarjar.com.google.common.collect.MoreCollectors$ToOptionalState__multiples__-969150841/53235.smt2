(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2187 0)
(declare-sort var362 0)
(declare-sort var1260 0)
(declare-sort var1733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun element/-744647331 (var2187) var362)
(declare-fun append/-1031950772 (String var362) String)
(declare-fun extras/-744647331 (var2187) var1260)
(declare-fun var1260_iterator/-912451715 (var1260) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var1733-init () var1733)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1733 String) void)
(declare-const null-var2187 var2187)
(declare-const null-Bool Bool)
(declare-const var1021 var2187) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.MoreCollectors$ToOptionalState 
(assert (not (= var1021 null-var2187)))
(declare-const var2251 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var2251 null-Bool)))
(define-const var1709 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1709)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1709!1 String)
(assert (= var1709!1 ""))
(assert true)
(define-const var3693 String (append/672562846 var1709!1 "expected one element but was: <")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected one element but was: <") 
(declare-const var1709!2 String)
(assert (= var1709!2 (str.++ var1709!1 "expected one element but was: <")))
(define-const var1715 var362 (element/-744647331 var1021)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.MoreCollectors$ToOptionalState: java.lang.Object element> 
(assert true)
(define-const var2746 String (append/-1031950772 var3693 var1715)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3693!1 String)
(assert (str.prefixof var3693 var3693!1))
(define-const var3206 var1260 (extras/-744647331 var1021)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.MoreCollectors$ToOptionalState: java.util.List extras> 
(define-const var1418 Iterator (var1260_iterator/-912451715 var3206)) ; Statement: r6 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var370 Bool (Iterator_hasNext/-1669924200 var1418)) ; Statement: $z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var370 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if z1 == 0 goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (= (ite var2251 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (append/-1166366385 var2746 62)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var2746!1 String)
(assert (str.prefixof var2746 var2746!1))
(define-const var1000 var1733 var1733-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3840 String (toString/-2075883882 var2746!1)) ; Statement: $r8 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1000 var3840)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1000!1 var1733)
(declare-const var3840!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), element/-744647331=([com.google.javascript.jscomp.jarjar.com.google.common.collect.MoreCollectors$ToOptionalState], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), extras/-744647331=([com.google.javascript.jscomp.jarjar.com.google.common.collect.MoreCollectors$ToOptionalState], java.util.List), var1260_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var1733-init=([], java.lang.IllegalArgumentException), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2187=com.google.javascript.jscomp.jarjar.com.google.common.collect.MoreCollectors$ToOptionalState, var1021=r1, var2251=z1, var1709=$r0, var3693=$r3, var362=java.lang.Object, var1715=$r2, var2746=r4, var1260=java.util.List, var3206=$r5, var1418=r6, var370=$z0, var1733=java.lang.IllegalArgumentException, var1000=$r7, var3840=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.MoreCollectors$ToOptionalState=var2187, r1=var1021, z1=var2251, $r0=var1709, $r3=var3693, java.lang.Object=var362, $r2=var1715, r4=var2746, java.util.List=var1260, $r5=var3206, r6=var1418, $z0=var370, java.lang.IllegalArgumentException=var1733, $r7=var1000, $r8=var3840}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.MoreCollectors$ToOptionalState;	z1 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected one element but was: <");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.MoreCollectors$ToOptionalState: java.lang.Object element>;	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.MoreCollectors$ToOptionalState: java.util.List extras>;	r6 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if z1 == 0 goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r7 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 4