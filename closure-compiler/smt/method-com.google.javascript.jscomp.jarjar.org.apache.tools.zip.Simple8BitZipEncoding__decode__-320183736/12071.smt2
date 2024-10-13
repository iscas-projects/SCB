(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var1774 var1774)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3767 var1774) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding 
(assert (not (= var3767 null-var1774)))
(declare-const var1290 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1290 null-__Array__Int__Int__)))
(define-const var3341 Int (getLength-Arr-Int-1 var1290)) ; Statement: $i0 = lengthof r0 
(define-const var2740 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i0] 
(define-const var1953 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var3843 Int (getLength-Arr-Int-1 var1290)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i4 >= $i1 goto $r2 = new java.lang.String 
(assert (>= var1953 var3843)) ; Cond: i4 >= $i1 
(define-const var633 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var633 var2740)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var633!1 String)
(declare-const var2740!1 (Array Int Int))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var1774=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding, var3767=r3, var1290=r0, var3341=$i0, var2740=r1, var1953=i4, var3843=$i1, var633=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding=var1774, r3=var3767, r0=var1290, $i0=var3341, r1=var2740, i4=var1953, $i1=var3843, $r2=var633}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding;	r0 := @parameter0: byte[];	$i0 = lengthof r0;	r1 = newarray (char)[$i0];	i4 = 0;	$i1 = lengthof r0;	if i4 >= $i1 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1);	return $r2
;block_num 3