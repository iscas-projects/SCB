(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var284 0)
(declare-sort var3431 0)
(declare-sort var3872 0)
(declare-sort var3087 0)
(declare-sort var3313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun retriesAllowed/21545935 (var284) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun task/21545935 (var284) var3313)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3313 String Int) void)
(declare-const null-var284 var284)
(declare-const null-var3431 var3431)
(declare-const null-String String)
(declare-const null-var3087 var3087)
(declare-const var1739 var284) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler 
(assert (not (= var1739 null-var284)))
(declare-const var3927 var3431) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Retryable 
(assert (not (= var3927 null-var3431)))
(declare-const var3979 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var3979 null-String)))
(define-const var1645 Int 0) ; Statement: i3 = 0 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3754 var3087) ; Statement: $r1 := @caughtexception 
(assert (not (= var3754 null-var3087)))
(define-const var1645!1 Int (+ var1645 1)) ; Statement: i3 = i3 + 1 
(define-const var1939 Int (retriesAllowed/21545935 var1739)) ; Statement: $i0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: int retriesAllowed> 
 ; Statement: if i3 <= $i0 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task task> 
(assert (not (<= var1645!1 var1939))) ; Negate: Cond: i3 <= $i0  
(define-const var3795 Int (retriesAllowed/21545935 var1739)) ; Statement: $i1 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: int retriesAllowed> 
(define-const var1982 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i1 <= $i5 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task task> 
(assert (not (<= var3795 var1982))) ; Negate: Cond: $i1 <= $i5  
(define-const var803 var3313 (task/21545935 var1739)) ; Statement: $r13 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task task> 
(define-const var1386 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1386)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1386!1 String)
(assert (= var1386!1 ""))
(assert true)
(define-const var1559 String (append/672562846 var1386!1 "try #")) ; Statement: $r14 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try #") 
(declare-const var1386!2 String)
(assert (= var1386!2 (str.++ var1386!1 "try #")))
(assert true)
(define-const var929 String (append/-1001720160 var1559 var1645!1)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var1559!1 String)
(assert (str.prefixof var1559 var1559!1))
(assert true)
(define-const var1074 String (append/672562846 var929 ": IO error (")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": IO error (") 
(declare-const var929!1 String)
(assert (= var929!1 (str.++ var929 ": IO error (")))
(assert true)
(define-const var1803 String (append/672562846 var1074 var3979)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1074!1 String)
(assert (= var1074!1 (str.++ var1074 var3979)))
(assert true)
(define-const var3182 String (append/672562846 var1803 "), number of maximum retries reached (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), number of maximum retries reached (") 
(declare-const var1803!1 String)
(assert (= var1803!1 (str.++ var1803 "), number of maximum retries reached (")))
(define-const var2925 Int (retriesAllowed/21545935 var1739)) ; Statement: $i2 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: int retriesAllowed> 
(assert true)
(define-const var3311 String (append/-1001720160 var3182 var2925)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3182!1 String)
(assert (str.prefixof var3182 var3182!1))
(assert true)
(define-const var2632 String (append/672562846 var3311 "), giving up")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), giving up") 
(declare-const var3311!1 String)
(assert (= var3311!1 (str.++ var3311 "), giving up")))
(assert true)
(define-const var3698 String (toString/-2075883882 var2632)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 var803 var3698 1)) ; Statement: virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: void log(java.lang.String,int)>($r21, 1) 

(declare-const var803!1 var3313)
(declare-const var3698!1 String)
(declare-const var367 Int)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {retriesAllowed/21545935=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler], int), cast-from-Int-to-Int=([int], int), task/21545935=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void)}
; {var284=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler, var1739=r2, var3431=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Retryable, var3927=r0, var3979=r7, var3872=null_type, var1645=i3, var3087=java.io.IOException, var3754=$r1, var1939=$i0, var3795=$i1, var1982=$i5, var3313=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var803=$r13, var1386=$r22, var1559=$r14, var929=$r15, var1074=$r16, var1803=$r17, var3182=$r18, var2925=$i2, var3311=$r19, var2632=$r20, var3698=$r21, var367=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler=var284, r2=var1739, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Retryable=var3431, r0=var3927, r7=var3979, null_type=var3872, i3=var1645, java.io.IOException=var3087, $r1=var3754, $i0=var1939, $i1=var3795, $i5=var1982, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3313, $r13=var803, $r22=var1386, $r14=var1559, $r15=var929, $r16=var1074, $r17=var1803, $r18=var3182, $i2=var2925, $r19=var3311, $r20=var2632, $r21=var3698, 1=var367}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Retryable;	r7 := @parameter1: java.lang.String;	i3 = 0;	$r1 := @caughtexception;	i3 = i3 + 1;	$i0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: int retriesAllowed>;	if i3 <= $i0 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task task>;	$i1 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: int retriesAllowed>;	$i5 = (int) -1;	if $i1 <= $i5 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task task>;	$r13 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task task>;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try #");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": IO error (");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), number of maximum retries reached (");	$i2 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RetryHandler: int retriesAllowed>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), giving up");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: void log(java.lang.String,int)>($r21, 1);	throw $r1
;block_num 4