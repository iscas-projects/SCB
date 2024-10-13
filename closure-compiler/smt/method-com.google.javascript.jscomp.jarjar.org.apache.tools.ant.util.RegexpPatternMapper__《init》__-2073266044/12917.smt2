(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3540 0)
(declare-sort var346 0)
(declare-sort var2733 0)
(declare-sort var1669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var346) void)
(declare-fun cast-from-var3540-to-var346 (var3540) var346)
(declare-fun reg/1601745531 (var3540) var2733)
(declare-fun to/1601745531 (var3540) (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun result/1601745531 (var3540) String)
(declare-fun handleDirSep/1601745531 (var3540) Bool)
(declare-fun regexpOptions/1601745531 (var3540) Int)
(declare-fun var1669-init () var1669)
(declare-fun <init>/-2110569726 (var1669) void)
(declare-fun newRegexpMatcher/-141673816 (var1669) var2733)
(declare-const null-var3540 var3540)
(declare-const null-var2733 var2733)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2141 var3540) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper 
(assert (not (= var2141 null-var3540)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3540-to-var346 var2141))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2141!1 var3540)
(declare-const var2141!2 var3540)
(assert (not (= var2141!2 null-var3540)))
(assert (= (reg/1601745531 var2141!2) null-var2733)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher reg> = null 
(declare-const var2141!3 var3540)
(assert (not (= var2141!3 null-var3540)))
(assert (= (to/1601745531 var2141!3) null-__Array__Int__Int__)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: char[] 'to'> = null 
(define-const var3499 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3499)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3499!1 String)
(declare-const var2141!4 var3540)
(assert (not (= var2141!4 null-var3540)))
(assert (= (result/1601745531 var2141!4) var3499!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: java.lang.StringBuffer result> = $r1 
(declare-const var2141!5 var3540)
(assert (not (= var2141!5 null-var3540)))
(assert (= (handleDirSep/1601745531 var2141!5) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: boolean handleDirSep> = 0 
(declare-const var2141!6 var3540)
(assert (not (= var2141!6 null-var3540)))
(assert (= (regexpOptions/1601745531 var2141!6) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: int regexpOptions> = 0 
(define-const var1513 var1669 var1669-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcherFactory 
(assert true)
;(assert (<init>/-2110569726 var1513)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcherFactory: void <init>()>() 

(declare-const var1513!1 var1669)
(assert true)
(define-const var1661 var2733 (newRegexpMatcher/-141673816 var1513!1)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcherFactory: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher newRegexpMatcher()>() 
(declare-const var2141!7 var3540)
(assert (not (= var2141!7 null-var3540)))
(assert (= (reg/1601745531 var2141!7) var1661)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher reg> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3540-to-var346=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper], java.lang.Object), reg/1601745531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher), to/1601745531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper], char[]), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), result/1601745531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper], java.lang.StringBuffer), handleDirSep/1601745531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper], boolean), regexpOptions/1601745531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper], int), var1669-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcherFactory), <init>/-2110569726=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcherFactory], void), newRegexpMatcher/-141673816=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcherFactory], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher)}
; {var3540=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper, var2141=r0, var346=java.lang.Object, var2733=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher, var3499=$r1, var1669=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcherFactory, var1513=$r2, var1661=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper=var3540, r0=var2141, java.lang.Object=var346, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher=var2733, $r1=var3499, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcherFactory=var1669, $r2=var1513, $r3=var1661}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher reg> = null;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: char[] 'to'> = null;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: java.lang.StringBuffer result> = $r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: boolean handleDirSep> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: int regexpOptions> = 0;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcherFactory;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcherFactory: void <init>()>();	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcherFactory: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher newRegexpMatcher()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher reg> = $r3;	return
;block_num 1