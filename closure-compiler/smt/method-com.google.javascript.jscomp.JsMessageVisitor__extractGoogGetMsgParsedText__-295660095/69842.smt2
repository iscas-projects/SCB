(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3551 0)
(declare-sort var2907 0)
(declare-sort var2799 0)
(declare-sort var3527 0)
(declare-sort var1 0)
(declare-sort var3511 0)
(declare-sort var2779 0)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2799_builder/-1909122123 () var2907)
(declare-fun var1_builder/1529695113 () var3527)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun var3511_create/1885024988 (String) var3511)
(declare-fun add/-32866407 (var2907 var2779) var2907)
(declare-fun cast-from-var3511-to-var2779 (var3511) var2779)
(declare-fun build/274856470 (var3527) var1)
(declare-fun build/-319551664 (var2907) var2799)
(declare-fun var1857-init () var1857)
(declare-fun <init>/1944436572 (var1857 String var1 var2799) void)
(declare-const null-String String)
(declare-const var2883 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2883 null-String)))
(define-const var216 String var2883) ; Statement: r16 = r0 
(define-const var3240 var2907 var2799_builder/-1909122123) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>() 
(define-const var1308 var3527 var1_builder/1529695113) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder builder()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2911 Int (indexOf/-1209756239 var216 "{$")) ; Statement: $i5 = virtualinvoke r16.<java.lang.String: int indexOf(java.lang.String)>("{$") 
 ; Statement: if $i5 >= 0 goto (branch) 
(assert (not (>= var2911 0))) ; Negate: Cond: $i5 >= 0  
(define-const var3682 var3511 (var3511_create/1885024988 var216)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.JsMessage$StringPart: com.google.javascript.jscomp.JsMessage$StringPart create(java.lang.String)>(r16) 
(assert true)
;(assert (add/-32866407 var3240 (cast-from-var3511-to-var2779 var3682))) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder add(java.lang.Object)>($r13) 

(declare-const var3240!1 var2907)
(declare-const var3682!1 var3511)
 ; Statement: goto [?= $r14 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet build()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3320 var1 (build/274856470 var1308)) ; Statement: $r14 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet build()>() 
(assert true)
(define-const var3706 var2799 (build/-319551664 var3240!1)) ; Statement: $r15 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList build()>() 
(define-const var886 var1857 var1857-init) ; Statement: $r7 = new com.google.javascript.jscomp.JsMessageVisitor$7 
(assert true)
;(assert (<init>/1944436572 var886 var2883 var3320 var3706)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.JsMessageVisitor$7: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)>(r0, $r14, $r15) 

(declare-const var886!1 var1857)
(declare-const var2883!1 String)
(declare-const var3320!1 var1)
(declare-const var3706!1 var2799)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2799_builder/-1909122123=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder), var1_builder/1529695113=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder), indexOf/-1209756239=([java.lang.String, java.lang.String], int), var3511_create/1885024988=([java.lang.String], com.google.javascript.jscomp.JsMessage$StringPart), add/-32866407=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder), cast-from-var3511-to-var2779=([com.google.javascript.jscomp.JsMessage$StringPart], java.lang.Object), build/274856470=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), build/-319551664=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), var1857-init=([], com.google.javascript.jscomp.JsMessageVisitor$7), <init>/1944436572=([com.google.javascript.jscomp.JsMessageVisitor$7, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], void)}
; {var2883=r0, var3551=null_type, var216=r16, var2907=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder, var2799=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3240=r1, var3527=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder, var1=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1308=r2, var2911=$i5, var3511=com.google.javascript.jscomp.JsMessage$StringPart, var3682=$r13, var2779=java.lang.Object, var3320=$r14, var3706=$r15, var1857=com.google.javascript.jscomp.JsMessageVisitor$7, var886=$r7}
; {r0=var2883, null_type=var3551, r16=var216, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder=var2907, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2799, r1=var3240, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder=var3527, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1, r2=var1308, $i5=var2911, com.google.javascript.jscomp.JsMessage$StringPart=var3511, $r13=var3682, java.lang.Object=var2779, $r14=var3320, $r15=var3706, com.google.javascript.jscomp.JsMessageVisitor$7=var1857, $r7=var886}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r16 = r0;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>();	r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder builder()>();	$i5 = virtualinvoke r16.<java.lang.String: int indexOf(java.lang.String)>("{$");	if $i5 >= 0 goto (branch);	$r13 = staticinvoke <com.google.javascript.jscomp.JsMessage$StringPart: com.google.javascript.jscomp.JsMessage$StringPart create(java.lang.String)>(r16);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder add(java.lang.Object)>($r13);	goto [?= $r14 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet build()>()];	$r14 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet build()>();	$r15 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList build()>();	$r7 = new com.google.javascript.jscomp.JsMessageVisitor$7;	specialinvoke $r7.<com.google.javascript.jscomp.JsMessageVisitor$7: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)>(r0, $r14, $r15);	return $r7
;block_num 4