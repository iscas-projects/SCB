(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1731 0)
(declare-sort var3443 0)
(declare-sort var404 0)
(declare-sort var2543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun reg/1601745531 (var1731) var404)
(declare-fun regexpOptions/1601745531 (var1731) Int)
(declare-fun var404_getGroups/-1272753307 (var404 String Int) var2543)
(declare-fun result/1601745531 (var1731) String)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun to/1601745531 (var1731) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun substring/1996688697 (String Int) String)
(declare-const null-var1731 var1731)
(declare-const null-String String)
(declare-const var1360 var1731) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper 
(assert (not (= var1360 null-var1731)))
(declare-const var2138 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2138 null-String)))
(define-const var699 var404 (reg/1601745531 var1360)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher reg> 
(define-const var721 Int (regexpOptions/1601745531 var1360)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: int regexpOptions> 
(define-const var809 var2543 (var404_getGroups/-1272753307 var699 var2138 var721)) ; Statement: r3 = interfaceinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher: java.util.Vector getGroups(java.lang.String,int)>(r1, $i0) 
(define-const var2541 String (result/1601745531 var1360)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: java.lang.StringBuffer result> 
(assert true)
;(assert (setLength/163251007 var2541 0)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2541!1 String)
(declare-const var2329 Int)
(define-const var2000 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var401 (Array Int Int) (to/1601745531 var1360)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: char[] 'to'> 
(define-const var2661 Int (getLength-Arr-Int-1 var401)) ; Statement: $i1 = lengthof $r5 
 ; Statement: if i8 >= $i1 goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: java.lang.StringBuffer result> 
(assert (>= var2000 var2661)) ; Cond: i8 >= $i1 
(define-const var2499 String (result/1601745531 var1360)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: java.lang.StringBuffer result> 
(assert true)
(define-const var2874 String (substring/1996688697 var2499 0)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String substring(int)>(0) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {reg/1601745531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher), regexpOptions/1601745531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper], int), var404_getGroups/-1272753307=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher, java.lang.String, int], java.util.Vector), result/1601745531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), to/1601745531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper], char[]), getLength-Arr-Int-1=([char[]], int), substring/1996688697=([java.lang.StringBuffer, int], java.lang.String)}
; {var1731=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper, var1360=r0, var2138=r1, var3443=null_type, var404=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher, var699=$r2, var721=$i0, var2543=java.util.Vector, var809=r3, var2541=$r4, var2329=0, var2000=i8, var401=$r5, var2661=$i1, var2499=$r6, var2874=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper=var1731, r0=var1360, r1=var2138, null_type=var3443, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher=var404, $r2=var699, $i0=var721, java.util.Vector=var2543, r3=var809, $r4=var2541, 0=var2329, i8=var2000, $r5=var401, $i1=var2661, $r6=var2499, $r7=var2874}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher reg>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: int regexpOptions>;	r3 = interfaceinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpMatcher: java.util.Vector getGroups(java.lang.String,int)>(r1, $i0);	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: java.lang.StringBuffer result>;	virtualinvoke $r4.<java.lang.StringBuffer: void setLength(int)>(0);	i8 = 0;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: char[] 'to'>;	$i1 = lengthof $r5;	if i8 >= $i1 goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: java.lang.StringBuffer result>;	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: java.lang.StringBuffer result>;	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String substring(int)>(0);	return $r7
;block_num 3