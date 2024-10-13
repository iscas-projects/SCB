(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var148 0)
(declare-sort var3316 0)
(declare-sort var3697 0)
(declare-sort var1283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun var3697-init () var3697)
(declare-fun <init>/1874113931 (var3697 var1283 var1283) void)
(declare-fun cast-from-String-to-var1283 (String) var1283)
(declare-const null-var148 var148)
(declare-const null-String String)
(declare-const var2552 var148) ; Statement: r3 := @this: com.mysql.cj.conf.ConnectionUrlParser 
(assert (not (= var2552 null-var148)))
(declare-const var3684 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3684 null-String)))
(define-const var1714 String null-String) ; Statement: r4 = null 
(define-const var521 String var3684) ; Statement: r5 = r0 
(assert true)
(define-const var1648 Int (indexOf/-1209756239 var3684 "@")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("@") 
 ; Statement: if i0 < 0 goto $r1 = new com.mysql.cj.conf.ConnectionUrlParser$Pair 
(assert (< var1648 0)) ; Cond: i0 < 0 
(define-const var3111 var3697 var3697-init) ; Statement: $r1 = new com.mysql.cj.conf.ConnectionUrlParser$Pair 
(assert true)
;(assert (<init>/1874113931 var3111 (cast-from-String-to-var1283 var1714) (cast-from-String-to-var1283 var521))) ; Statement: specialinvoke $r1.<com.mysql.cj.conf.ConnectionUrlParser$Pair: void <init>(java.lang.Object,java.lang.Object)>(r4, r5) 

(declare-const var3111!1 var3697)
(declare-const var1714!1 String)
(declare-const var521!1 String)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), var3697-init=([], com.mysql.cj.conf.ConnectionUrlParser$Pair), <init>/1874113931=([com.mysql.cj.conf.ConnectionUrlParser$Pair, java.lang.Object, java.lang.Object], void), cast-from-String-to-var1283=([java.lang.String], java.lang.Object)}
; {var148=com.mysql.cj.conf.ConnectionUrlParser, var2552=r3, var3684=r0, var3316=null_type, var1714=r4, var521=r5, var1648=i0, var3697=com.mysql.cj.conf.ConnectionUrlParser$Pair, var3111=$r1, var1283=java.lang.Object}
; {com.mysql.cj.conf.ConnectionUrlParser=var148, r3=var2552, r0=var3684, null_type=var3316, r4=var1714, r5=var521, i0=var1648, com.mysql.cj.conf.ConnectionUrlParser$Pair=var3697, $r1=var3111, java.lang.Object=var1283}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r3 := @this: com.mysql.cj.conf.ConnectionUrlParser;	r0 := @parameter0: java.lang.String;	r4 = null;	r5 = r0;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("@");	if i0 < 0 goto $r1 = new com.mysql.cj.conf.ConnectionUrlParser$Pair;	$r1 = new com.mysql.cj.conf.ConnectionUrlParser$Pair;	specialinvoke $r1.<com.mysql.cj.conf.ConnectionUrlParser$Pair: void <init>(java.lang.Object,java.lang.Object)>(r4, r5);	return $r1
;block_num 2