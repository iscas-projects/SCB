(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var35 0)
(declare-sort var3652 0)
(declare-sort var2006 0)
(declare-sort var3841 0)
(declare-sort var678 0)
(declare-sort var1961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/840625469 (var35) var3652)
(declare-fun <init>/-279557996 (var3841) void)
(declare-fun cast-from-var35-to-var3841 (var35) var3841)
(declare-fun input/840625469 (var35) String)
(declare-fun var3652_access$000/1413955468 (var3652) var678)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun matcher/-345685736 (var678 (Array Int Int)) var1961)
(declare-fun joniMatcher/840625469 (var35) var1961)
(declare-const null-var35 var35)
(declare-const null-var3652 var3652)
(declare-const null-String String)
(declare-const var3490 var35) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher 
(assert (not (= var3490 null-var35)))
(declare-const var2893 var3652) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.regexp.JoniRegExp 
(assert (not (= var2893 null-var3652)))
(declare-const var3140 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3140 null-String)))
(declare-const var3490!1 var35)
(assert (not (= var3490!1 null-var35)))
(assert (= (this$0/840625469 var3490!1) var2893)) ; Statement: r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.JoniRegExp this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var35-to-var3841 var3490!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3490!2 var35)
(declare-const var3490!3 var35)
(assert (not (= var3490!3 null-var35)))
(assert (= (input/840625469 var3490!3) var3140)) ; Statement: r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: java.lang.String input> = r2 
(define-const var791 var678 (var3652_access$000/1413955468 var2893)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.runtime.regexp.JoniRegExp: jdk.nashorn.internal.runtime.regexp.joni.Regex access$000(jdk.nashorn.internal.runtime.regexp.JoniRegExp)>(r1) 
(assert true)
(define-const var3488 (Array Int Int) (toCharArray/415275702 var3140)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var3321 var1961 (matcher/-345685736 var791 var3488)) ; Statement: $r5 = virtualinvoke $r4.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.Matcher matcher(char[])>($r3) 
(declare-const var3490!4 var35)
(assert (not (= var3490!4 null-var35)))
(assert (= (joniMatcher/840625469 var3490!4) var3321)) ; Statement: r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/840625469=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], jdk.nashorn.internal.runtime.regexp.JoniRegExp), <init>/-279557996=([java.lang.Object], void), cast-from-var35-to-var3841=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], java.lang.Object), input/840625469=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], java.lang.String), var3652_access$000/1413955468=([jdk.nashorn.internal.runtime.regexp.JoniRegExp], jdk.nashorn.internal.runtime.regexp.joni.Regex), toCharArray/415275702=([java.lang.String], char[]), matcher/-345685736=([jdk.nashorn.internal.runtime.regexp.joni.Regex, char[]], jdk.nashorn.internal.runtime.regexp.joni.Matcher), joniMatcher/840625469=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], jdk.nashorn.internal.runtime.regexp.joni.Matcher)}
; {var35=jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher, var3490=r0, var3652=jdk.nashorn.internal.runtime.regexp.JoniRegExp, var2893=r1, var3140=r2, var2006=null_type, var3841=java.lang.Object, var678=jdk.nashorn.internal.runtime.regexp.joni.Regex, var791=$r4, var3488=$r3, var1961=jdk.nashorn.internal.runtime.regexp.joni.Matcher, var3321=$r5}
; {jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher=var35, r0=var3490, jdk.nashorn.internal.runtime.regexp.JoniRegExp=var3652, r1=var2893, r2=var3140, null_type=var2006, java.lang.Object=var3841, jdk.nashorn.internal.runtime.regexp.joni.Regex=var678, $r4=var791, $r3=var3488, jdk.nashorn.internal.runtime.regexp.joni.Matcher=var1961, $r5=var3321}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher;	r1 := @parameter0: jdk.nashorn.internal.runtime.regexp.JoniRegExp;	r2 := @parameter1: java.lang.String;	r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.JoniRegExp this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: java.lang.String input> = r2;	$r4 = staticinvoke <jdk.nashorn.internal.runtime.regexp.JoniRegExp: jdk.nashorn.internal.runtime.regexp.joni.Regex access$000(jdk.nashorn.internal.runtime.regexp.JoniRegExp)>(r1);	$r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>();	$r5 = virtualinvoke $r4.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.Matcher matcher(char[])>($r3);	r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher> = $r5;	return
;block_num 1