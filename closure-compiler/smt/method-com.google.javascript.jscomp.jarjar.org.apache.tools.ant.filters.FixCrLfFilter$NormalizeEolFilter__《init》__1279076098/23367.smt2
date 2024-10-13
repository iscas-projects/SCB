(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2661 0)
(declare-sort var285 0)
(declare-sort var2678 0)
(declare-sort var1046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1508981035 (var1046 var285) void)
(declare-fun cast-from-var2661-to-var1046 (var2661) var1046)
(declare-fun normalizedEOL/933495245 (var2661) Int)
(declare-fun eol/933495245 (var2661) (Array Int Int))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun fixLast/933495245 (var2661) Bool)
(declare-const null-var2661 var2661)
(declare-const null-var285 var285)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1717 var2661) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter 
(assert (not (= var1717 null-var2661)))
(declare-const var3566 var285) ; Statement: r1 := @parameter0: java.io.Reader 
(assert (not (= var3566 null-var285)))
(declare-const var3701 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3701 null-String)))
(declare-const var1091 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1091 null-Bool)))
(assert true)
;(assert (<init>/-1508981035 (cast-from-var2661-to-var1046 var1717) var3566)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$SimpleFilterReader: void <init>(java.io.Reader)>(r1) 

(declare-const var1717!1 var2661)
(declare-const var3566!1 var285)
(declare-const var1717!2 var2661)
(assert (not (= var1717!2 null-var2661)))
(assert (= (normalizedEOL/933495245 var1717!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter: int normalizedEOL> = 0 
(declare-const var1717!3 var2661)
(assert (not (= var1717!3 null-var2661)))
(assert (= (eol/933495245 var1717!3) null-__Array__Int__Int__)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter: char[] eol> = null 
(assert true)
(define-const var1391 (Array Int Int) (toCharArray/415275702 var3701)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>() 
(declare-const var1717!4 var2661)
(assert (not (= var1717!4 null-var2661)))
(assert (= (eol/933495245 var1717!4) var1391)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter: char[] eol> = $r3 
(declare-const var1717!5 var2661)
(assert (not (= var1717!5 null-var2661)))
(assert (= (fixLast/933495245 var1717!5) var1091)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter: boolean fixLast> = z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1508981035=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$SimpleFilterReader, java.io.Reader], void), cast-from-var2661-to-var1046=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$SimpleFilterReader), normalizedEOL/933495245=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter], int), eol/933495245=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter], char[]), toCharArray/415275702=([java.lang.String], char[]), fixLast/933495245=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter], boolean)}
; {var2661=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter, var1717=r0, var285=java.io.Reader, var3566=r1, var3701=r2, var2678=null_type, var1091=z0, var1046=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$SimpleFilterReader, var1391=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter=var2661, r0=var1717, java.io.Reader=var285, r1=var3566, r2=var3701, null_type=var2678, z0=var1091, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$SimpleFilterReader=var1046, $r3=var1391}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter;	r1 := @parameter0: java.io.Reader;	r2 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$SimpleFilterReader: void <init>(java.io.Reader)>(r1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter: int normalizedEOL> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter: char[] eol> = null;	$r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter: char[] eol> = $r3;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$NormalizeEolFilter: boolean fixLast> = z0;	return
;block_num 1