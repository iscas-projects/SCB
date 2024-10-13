(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3228 0)
(declare-sort var2792 0)
(declare-sort var1019 0)
(declare-sort var2388 0)
(declare-sort var627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-40459481 (var3228) var2792)
(declare-fun <init>/376704069 (var2388 var1019 Int Int) void)
(declare-fun cast-from-var3228-to-var2388 (var3228) var2388)
(declare-fun var2792_access$100/-424430225 (var2792) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun replacementChars/-40459481 (var3228) (Array Int Int))
(declare-const null-var3228 var3228)
(declare-const null-var2792 var2792)
(declare-const null-var1019 var1019)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1661 var3228) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1 
(assert (not (= var1661 null-var3228)))
(declare-const var1617 var2792) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder 
(assert (not (= var1617 null-var2792)))
(declare-const var1370 var1019) ; Statement: r2 := @parameter1: java.util.Map 
(assert (not (= var1370 null-var1019)))
(declare-const var1582 Int) ; Statement: c0 := @parameter2: char 
(assert (not (= var1582 null-Int)))
(declare-const var2038 Int) ; Statement: c1 := @parameter3: char 
(assert (not (= var2038 null-Int)))
(declare-const var1661!1 var3228)
(assert (not (= var1661!1 null-var3228)))
(assert (= (this$0/-40459481 var1661!1) var1617)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder this$0> = r1 
(assert true)
;(assert (<init>/376704069 (cast-from-var3228-to-var2388 var1661!1) var1370 var1582 var2038)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper: void <init>(java.util.Map,char,char)>(r2, c0, c1) 

(declare-const var1661!2 var3228)
(declare-const var1370!1 var1019)
(declare-const var1582!1 Int)
(declare-const var2038!1 Int)
(define-const var3193 var2792 (this$0/-40459481 var1661!2)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder this$0> 
(define-const var74 String (var2792_access$100/-424430225 var3193)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder: java.lang.String access$100(com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder)>($r3) 
 ; Statement: if $r4 == null goto $r7 = null 
(assert (not (= var74 null-String))) ; Negate: Cond: $r4 == null  
(define-const var292 var2792 (this$0/-40459481 var1661!2)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder this$0> 
(define-const var3306 String (var2792_access$100/-424430225 var292)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder: java.lang.String access$100(com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder)>($r5) 
(assert true)
(define-const var615 (Array Int Int) (toCharArray/415275702 var3306)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>() 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: char[] replacementChars> = $r7] 
(assert true) ; Non Conditional
(declare-const var1661!3 var3228)
(assert (not (= var1661!3 null-var3228)))
(assert (= (replacementChars/-40459481 var1661!3) var615)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: char[] replacementChars> = $r7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-40459481=([com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1], com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder), <init>/376704069=([com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper, java.util.Map, char, char], void), cast-from-var3228-to-var2388=([com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1], com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper), var2792_access$100/-424430225=([com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), replacementChars/-40459481=([com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1], char[])}
; {var3228=com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1, var1661=r0, var2792=com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder, var1617=r1, var1019=java.util.Map, var1370=r2, var1582=c0, var2038=c1, var2388=com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper, var3193=$r3, var74=$r4, var627=null_type, var292=$r5, var3306=$r6, var615=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1=var3228, r0=var1661, com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder=var2792, r1=var1617, java.util.Map=var1019, r2=var1370, c0=var1582, c1=var2038, com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper=var2388, $r3=var3193, $r4=var74, null_type=var627, $r5=var292, $r6=var3306, $r7=var615}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder;	r2 := @parameter1: java.util.Map;	c0 := @parameter2: char;	c1 := @parameter3: char;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder this$0> = r1;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper: void <init>(java.util.Map,char,char)>(r2, c0, c1);	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder this$0>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder: java.lang.String access$100(com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder)>($r3);	if $r4 == null goto $r7 = null;	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder this$0>;	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder: java.lang.String access$100(com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder)>($r5);	$r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>();	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: char[] replacementChars> = $r7];	r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: char[] replacementChars> = $r7;	return
;block_num 3