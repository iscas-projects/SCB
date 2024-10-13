(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1997898014 (var1725) String)
(declare-fun append/50905802 (String String Int Int) String)
(declare-const null-var1725 var1725)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2889 var1725) ; Statement: r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer 
(assert (not (= var2889 null-var1725)))
(declare-const var1107 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var1107 null-String)))
(declare-const var3139 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3139 null-Int)))
(declare-const var3890 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3890 null-Int)))
(define-const var3809 String (buffer/1997898014 var2889)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/50905802 var3809 var1107 var3139 var3890)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i0, i1) 
(declare-const var3809!1 String)
(assert (str.prefixof var3809 var3809!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1997898014=([com.github.jknack.handlebars.Options$InMemoryBuffer], java.lang.StringBuilder), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder)}
; {var1725=com.github.jknack.handlebars.Options$InMemoryBuffer, var2889=r0, var1107=r1, var3139=i0, var3890=i1, var3809=$r2}
; {com.github.jknack.handlebars.Options$InMemoryBuffer=var1725, r0=var2889, r1=var1107, i0=var3139, i1=var3890, $r2=var3809}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer;	r1 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i0, i1);	return r0
;block_num 1