(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1701 0)
(declare-sort var2289 0)
(declare-sort var309 0)
(declare-sort var1741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1990026055 (var1741 var2289) void)
(declare-fun cast-from-var1701-to-var1741 (var1701) var1741)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun text/-1579571732 (var1701) String)
(declare-fun escapeChar/-1579571732 (var1701) String)
(declare-const null-var1701 var1701)
(declare-const null-var2289 var2289)
(declare-const null-String String)
(declare-const var1638 var1701) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.Text 
(assert (not (= var1638 null-var1701)))
(declare-const var3426 var2289) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.Handlebars 
(assert (not (= var3426 null-var2289)))
(declare-const var1578 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1578 null-String)))
(declare-const var3046 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var3046 null-String)))
(assert true)
;(assert (<init>/-1990026055 (cast-from-var1701-to-var1741 var1638) var3426)) ; Statement: specialinvoke r0.<com.github.jknack.handlebars.internal.BaseTemplate: void <init>(com.github.jknack.handlebars.Handlebars)>(r1) 

(declare-const var1638!1 var1701)
(declare-const var3426!1 var2289)
(define-const var1026 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1026 var1578)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>(r3) 
(declare-const var1026!1 String)
(assert (= var1026!1 var1578))
(declare-const var1638!2 var1701)
(assert (not (= var1638!2 null-var1701)))
(assert (= (text/-1579571732 var1638!2) var1026!1)) ; Statement: r0.<com.github.jknack.handlebars.internal.Text: java.lang.StringBuilder text> = $r2 
(declare-const var1638!3 var1701)
(assert (not (= var1638!3 null-var1701)))
(assert (= (escapeChar/-1579571732 var1638!3) var3046)) ; Statement: r0.<com.github.jknack.handlebars.internal.Text: java.lang.String escapeChar> = r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1990026055=([com.github.jknack.handlebars.internal.BaseTemplate, com.github.jknack.handlebars.Handlebars], void), cast-from-var1701-to-var1741=([com.github.jknack.handlebars.internal.Text], com.github.jknack.handlebars.internal.BaseTemplate), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), text/-1579571732=([com.github.jknack.handlebars.internal.Text], java.lang.StringBuilder), escapeChar/-1579571732=([com.github.jknack.handlebars.internal.Text], java.lang.String)}
; {var1701=com.github.jknack.handlebars.internal.Text, var1638=r0, var2289=com.github.jknack.handlebars.Handlebars, var3426=r1, var1578=r3, var309=null_type, var3046=r4, var1741=com.github.jknack.handlebars.internal.BaseTemplate, var1026=$r2}
; {com.github.jknack.handlebars.internal.Text=var1701, r0=var1638, com.github.jknack.handlebars.Handlebars=var2289, r1=var3426, r3=var1578, null_type=var309, r4=var3046, com.github.jknack.handlebars.internal.BaseTemplate=var1741, $r2=var1026}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.Text;	r1 := @parameter0: com.github.jknack.handlebars.Handlebars;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	specialinvoke r0.<com.github.jknack.handlebars.internal.BaseTemplate: void <init>(com.github.jknack.handlebars.Handlebars)>(r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>(r3);	r0.<com.github.jknack.handlebars.internal.Text: java.lang.StringBuilder text> = $r2;	r0.<com.github.jknack.handlebars.internal.Text: java.lang.String escapeChar> = r4;	return
;block_num 1