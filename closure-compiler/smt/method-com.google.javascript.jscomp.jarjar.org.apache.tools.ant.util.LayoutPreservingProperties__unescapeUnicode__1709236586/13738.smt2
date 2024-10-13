(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3532 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun Int_parseInt/-1412036412 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3532 var3532)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2675 var3532) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties 
(assert (not (= var2675 null-var3532)))
(declare-const var2320 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var2320 null-__Array__Int__Int__)))
(declare-const var874 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var874 null-Int)))
(define-const var1200 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var1200 var2320 var874 4)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, 4) 

(declare-const var1200!1 String)
(declare-const var2320!1 (Array Int Int))
(declare-const var874!1 Int)
(declare-const var3065 Int)
(define-const var2155 Int (Int_parseInt/-1412036412 var1200!1 16)) ; Statement: $i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String,int)>($r0, 16) 
(define-const var2304 Int (cast-from-Int-to-Int var2155)) ; Statement: $c2 = (char) $i1 
 ; Statement: return $c2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), Int_parseInt/-1412036412=([java.lang.String, int], int), cast-from-Int-to-Int=([int], char)}
; {var3532=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties, var2675=r2, var2320=r1, var874=i0, var1200=$r0, var3065=4, var2155=$i1, var2304=$c2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties=var3532, r2=var2675, r1=var2320, i0=var874, $r0=var1200, 4=var3065, $i1=var2155, $c2=var2304}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties;	r1 := @parameter0: char[];	i0 := @parameter1: int;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, 4);	$i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String,int)>($r0, 16);	$c2 = (char) $i1;	return $c2
;block_num 1