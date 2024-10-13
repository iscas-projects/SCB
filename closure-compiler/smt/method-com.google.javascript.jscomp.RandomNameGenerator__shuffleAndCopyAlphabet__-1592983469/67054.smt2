(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1232 0)
(declare-sort var3084 0)
(declare-sort var697 0)
(declare-sort var966 0)
(declare-sort var2293 0)
(declare-sort var961 0)
(declare-sort var2357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var697-init () var697)
(declare-fun <init>/2032108350 (var697 var966) void)
(declare-fun cast-from-var1232-to-var966 (var1232) var966)
(declare-fun var2293_shuffle/-2020384054 (var961 var3084) void)
(declare-fun cast-from-var697-to-var961 (var697) var961)
(declare-fun String-init () String)
(declare-fun var2357_toArray/1132645212 (var966) (Array Int Int))
(declare-fun cast-from-var697-to-var966 (var697) var966)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var1232 var1232)
(declare-const null-var3084 var3084)
(declare-const var496 var1232) ; Statement: r1 := @parameter0: java.util.Set 
(assert (not (= var496 null-var1232)))
(declare-const var1343 var3084) ; Statement: r2 := @parameter1: java.util.Random 
(assert (not (= var1343 null-var3084)))
(define-const var2289 var697 var697-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/2032108350 var2289 (cast-from-var1232-to-var966 var496))) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>(r1) 

(declare-const var2289!1 var697)
(declare-const var496!1 var1232)
;(assert (var2293_shuffle/-2020384054 (cast-from-var697-to-var961 var2289!1) var1343)) ; Statement: staticinvoke <java.util.Collections: void shuffle(java.util.List,java.util.Random)>($r0, r2) 

(declare-const var2289!2 var697)
(declare-const var1343!1 var3084)
(define-const var3115 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var2138 (Array Int Int) (var2357_toArray/1132645212 (cast-from-var697-to-var966 var2289!2))) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars: char[] toArray(java.util.Collection)>($r0) 
(assert true)
;(assert (<init>/-915723298 var3115 var2138)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[])>($r4) 

(declare-const var3115!1 String)
(declare-const var2138!1 (Array Int Int))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var697-init=([], java.util.ArrayList), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var1232-to-var966=([java.util.Set], java.util.Collection), var2293_shuffle/-2020384054=([java.util.List, java.util.Random], void), cast-from-var697-to-var961=([java.util.ArrayList], java.util.List), String-init=([], java.lang.String), var2357_toArray/1132645212=([java.util.Collection], char[]), cast-from-var697-to-var966=([java.util.ArrayList], java.util.Collection), <init>/-915723298=([java.lang.String, char[]], void)}
; {var1232=java.util.Set, var496=r1, var3084=java.util.Random, var1343=r2, var697=java.util.ArrayList, var2289=$r0, var966=java.util.Collection, var2293=java.util.Collections, var961=java.util.List, var3115=$r3, var2357=com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars, var2138=$r4}
; {java.util.Set=var1232, r1=var496, java.util.Random=var3084, r2=var1343, java.util.ArrayList=var697, $r0=var2289, java.util.Collection=var966, java.util.Collections=var2293, java.util.List=var961, $r3=var3115, com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars=var2357, $r4=var2138}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @parameter0: java.util.Set;	r2 := @parameter1: java.util.Random;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>(r1);	staticinvoke <java.util.Collections: void shuffle(java.util.List,java.util.Random)>($r0, r2);	$r3 = new java.lang.String;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars: char[] toArray(java.util.Collection)>($r0);	specialinvoke $r3.<java.lang.String: void <init>(char[])>($r4);	return $r3
;block_num 1