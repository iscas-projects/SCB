(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun content/1602771272 (var1021) String)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-const null-var1021 var1021)
(declare-const null-Int Int)
(declare-const var1697 var1021) ; Statement: r0 := @this: com.github.jknack.handlebars.Handlebars$SafeString 
(assert (not (= var1697 null-var1021)))
(declare-const var3872 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3872 null-Int)))
(declare-const var3029 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3029 null-Int)))
(define-const var245 String (content/1602771272 var1697)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.Handlebars$SafeString: java.lang.CharSequence content> 
(define-const var3566 String (String_subSequence/-1087362312 var245 var3872 var3029)) ; Statement: $r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i0, i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {content/1602771272=([com.github.jknack.handlebars.Handlebars$SafeString], java.lang.CharSequence), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence)}
; {var1021=com.github.jknack.handlebars.Handlebars$SafeString, var1697=r0, var3872=i0, var3029=i1, var245=$r1, var3566=$r2}
; {com.github.jknack.handlebars.Handlebars$SafeString=var1021, r0=var1697, i0=var3872, i1=var3029, $r1=var245, $r2=var3566}
;seq <java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>
;cnt {"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Handlebars$SafeString;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<com.github.jknack.handlebars.Handlebars$SafeString: java.lang.CharSequence content>;	$r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i0, i1);	return $r2
;block_num 1