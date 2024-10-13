(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun chars/-264564148 (var1345) (Array Int Int))
(declare-fun offset/-264564148 (var1345) Int)
(declare-fun length/-264564148 (var1345) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1345 var1345)
(declare-const var508 var1345) ; Statement: r1 := @this: org.apache.lucene.util.CharsRef 
(assert (not (= var508 null-var1345)))
(define-const var3224 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var3152 (Array Int Int) (chars/-264564148 var508)) ; Statement: $r2 = r1.<org.apache.lucene.util.CharsRef: char[] chars> 
(define-const var492 Int (offset/-264564148 var508)) ; Statement: $i1 = r1.<org.apache.lucene.util.CharsRef: int offset> 
(define-const var535 Int (length/-264564148 var508)) ; Statement: $i0 = r1.<org.apache.lucene.util.CharsRef: int length> 
(assert true)
;(assert (<init>/-253222812 var3224 var3152 var492 var535)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, $i1, $i0) 

(declare-const var3224!1 String)
(declare-const var3152!1 (Array Int Int))
(declare-const var492!1 Int)
(declare-const var535!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), chars/-264564148=([org.apache.lucene.util.CharsRef], char[]), offset/-264564148=([org.apache.lucene.util.CharsRef], int), length/-264564148=([org.apache.lucene.util.CharsRef], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1345=org.apache.lucene.util.CharsRef, var508=r1, var3224=$r0, var3152=$r2, var492=$i1, var535=$i0}
; {org.apache.lucene.util.CharsRef=var1345, r1=var508, $r0=var3224, $r2=var3152, $i1=var492, $i0=var535}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: org.apache.lucene.util.CharsRef;	$r0 = new java.lang.String;	$r2 = r1.<org.apache.lucene.util.CharsRef: char[] chars>;	$i1 = r1.<org.apache.lucene.util.CharsRef: int offset>;	$i0 = r1.<org.apache.lucene.util.CharsRef: int length>;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, $i1, $i0);	return $r0
;block_num 1