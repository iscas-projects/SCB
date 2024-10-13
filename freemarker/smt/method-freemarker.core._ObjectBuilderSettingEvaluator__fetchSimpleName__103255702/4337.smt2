(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var682 0)
(declare-sort var2046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var682) Int)
(declare-fun src/-2081171709 (var682) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun isIdentifierStart/-1359950271 (var682 Int) Bool)
(declare-fun var2046-init () var2046)
(declare-fun <init>/1302353489 (var2046 String String Int) void)
(declare-const null-var682 var682)
(declare-const null-Bool Bool)
(declare-const var116 var682) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var116 null-var682)))
(declare-const var1204 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var1204 null-Bool)))
(define-const var2965 Int (pos/-2081171709 var116)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var3232 String (src/-2081171709 var116)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var647 Int (length/-134980193 var3232)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $c13 = 0 
(assert (not (>= var2965 var647))) ; Negate: Cond: $i0 >= $i1  
(define-const var405 String (src/-2081171709 var116)) ; Statement: $r8 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var1889 Int (pos/-2081171709 var116)) ; Statement: $i12 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert (and true (and (> (str.len var405) var1889) (<= 0 var1889))))
(define-const var772 Int (charAt/698050440 var405 var1889)) ; Statement: $c13 = virtualinvoke $r8.<java.lang.String: char charAt(int)>($i12) 
 ; Statement: goto [?= $z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13)] 
(assert true) ; Non Conditional
(assert true)
(define-const var707 Bool (isIdentifierStart/-1359950271 var116 var772)) ; Statement: $z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13) 
 ; Statement: if $z0 != 0 goto i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert (not (not (= (ite var707 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if z2 == 0 goto $r6 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(assert (= (ite var1204 1 0) 0)) ; Cond: z2 == 0 
(define-const var1296 var2046 var2046-init) ; Statement: $r6 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var326 String (src/-2081171709 var116)) ; Statement: $r7 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var686 Int (pos/-2081171709 var116)) ; Statement: $i11 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert true)
;(assert (<init>/1302353489 var1296 "class name" var326 var686)) ; Statement: specialinvoke $r6.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("class name", $r7, $i11) 

(declare-const var1296!1 var2046)
(declare-const var990 String)
(declare-const var326!1 String)
(declare-const var686!1 Int)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), isIdentifierStart/-1359950271=([freemarker.core._ObjectBuilderSettingEvaluator, char], boolean), var2046-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), <init>/1302353489=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.String, int], void)}
; {var682=freemarker.core._ObjectBuilderSettingEvaluator, var116=r0, var1204=z2, var2965=$i0, var3232=$r1, var647=$i1, var405=$r8, var1889=$i12, var772=$c13, var707=$z0, var2046=freemarker.core._ObjectBuilderSettingEvaluationException, var1296=$r6, var326=$r7, var686=$i11, var990="class name"}
; {freemarker.core._ObjectBuilderSettingEvaluator=var682, r0=var116, z2=var1204, $i0=var2965, $r1=var3232, $i1=var647, $r8=var405, $i12=var1889, $c13=var772, $z0=var707, freemarker.core._ObjectBuilderSettingEvaluationException=var2046, $r6=var1296, $r7=var326, $i11=var686, "class name"=var990}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z2 := @parameter0: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $c13 = 0;	$r8 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i12 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$c13 = virtualinvoke $r8.<java.lang.String: char charAt(int)>($i12);	goto [?= $z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13)];	$z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13);	if $z0 != 0 goto i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	if z2 == 0 goto $r6 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r6 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r7 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i11 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	specialinvoke $r6.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("class name", $r7, $i11);	throw $r6
;block_num 5