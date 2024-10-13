(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun declaration/170212153 (var276) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun endType/-2074539567 (var276) void)
(declare-const null-var276 var276)
(declare-const null-Int Int)
(declare-const var2511 var276) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var2511 null-var276)))
(declare-const var2584 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2584 null-Int)))
(define-const var3985 Int (cast-from-Int-to-Int var2584)) ; Statement: $i1 = (int) c0 
 ; Statement: tableswitch($i1) {     case 66: goto $r8 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 67: goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 68: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 69: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 70: goto $r6 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 71: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 72: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 73: goto $r5 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 74: goto $r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 75: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 76: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 77: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 78: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 79: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 80: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 81: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 82: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 83: goto $r3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 84: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 85: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 86: goto $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 87: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 88: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 89: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 90: goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     default: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>; } 
(assert (and (= var3985 74) (and (not (= var3985 73)) (and (not (= var3985 72)) (and (not (= var3985 71)) (and (not (= var3985 70)) (and (not (= var3985 69)) (and (not (= var3985 68)) (and (not (= var3985 67)) (and (not (= var3985 66)) true)))))))))) ; Intersect: Cond: $i1 == 74  and Intersect: Negate: Cond: $i1 == 73   and Intersect: Negate: Cond: $i1 == 72   and Intersect: Negate: Cond: $i1 == 71   and Intersect: Negate: Cond: $i1 == 70   and Intersect: Negate: Cond: $i1 == 69   and Intersect: Negate: Cond: $i1 == 68   and Intersect: Negate: Cond: $i1 == 67   and Intersect: Negate: Cond: $i1 == 66   and Non Conditional         
(define-const var3375 String (declaration/170212153 var2511)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1560614132 var3375 "long")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("long") 
(declare-const var3375!1 String)
(assert (str.prefixof var3375 var3375!1))
 ; Statement: goto [?= specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endType()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (endType/-2074539567 var2511)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endType()>() 

(declare-const var2511!1 var276)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), endType/-2074539567=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void)}
; {var276=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var2511=r0, var2584=c0, var3985=$i1, var3375=$r4}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var276, r0=var2511, c0=var2584, $i1=var3985, $r4=var3375}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	c0 := @parameter0: char;	$i1 = (int) c0;	tableswitch($i1) {     case 66: goto $r8 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 67: goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 68: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 69: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 70: goto $r6 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 71: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 72: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 73: goto $r5 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 74: goto $r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 75: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 76: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 77: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 78: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 79: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 80: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 81: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 82: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 83: goto $r3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 84: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 85: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 86: goto $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 87: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 88: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 89: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     case 90: goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;     default: goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>; };	$r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("long");	goto [?= specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endType()>()];	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endType()>();	return
;block_num 3