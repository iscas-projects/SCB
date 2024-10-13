(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun x/752353700 (var2930) Float32)
(declare-fun y/752353700 (var2930) Float32)
(declare-fun cast-from-Float32-to-String (Float32) String)
(declare-fun radius/752353700 (var2930) Float32)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2930 var2930)
(declare-const var1717 var2930) ; Statement: r1 := @this: org.apache.lucene.geo.XYCircle 
(assert (not (= var1717 null-var2930)))
(define-const var3738 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3738)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3738!1 String)
(assert (= var3738!1 ""))
(assert true)
;(assert (append/672562846 var3738!1 "CIRCLE(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CIRCLE(") 
(declare-const var3738!2 String)
(assert (= var3738!2 (str.++ var3738!1 "CIRCLE(")))
(define-const var3624 Float32 (x/752353700 var1717)) ; Statement: $f1 = r1.<org.apache.lucene.geo.XYCircle: float x> 
(define-const var1565 Float32 (y/752353700 var1717)) ; Statement: $f0 = r1.<org.apache.lucene.geo.XYCircle: float y> 
(define-const var463 String (str.++ "[\u0001,\u0001]" (cast-from-Float32-to-String var3624) (cast-from-Float32-to-String var1565))) ; Statement: $r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (float,float)>($f1, $f0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("[\u0001,\u0001]") 
(assert true)
;(assert (append/672562846 var3738!2 var463)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3738!3 String)
(assert (= var3738!3 (str.++ var3738!2 var463)))
(define-const var2328 Float32 (radius/752353700 var1717)) ; Statement: $f2 = r1.<org.apache.lucene.geo.XYCircle: float radius> 
(define-const var428 String (str.++ " radius = \u0001" (cast-from-Float32-to-String var2328))) ; Statement: $r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (float)>($f2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(" radius = \u0001") 
(assert true)
;(assert (append/672562846 var3738!3 var428)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3738!4 String)
(assert (= var3738!4 (str.++ var3738!3 var428)))
(assert true)
;(assert (append/-1166366385 var3738!4 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3738!5 String)
(assert (str.prefixof var3738!4 var3738!5))
(assert true)
(define-const var3982 String (toString/-2075883882 var3738!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), x/752353700=([org.apache.lucene.geo.XYCircle], float), y/752353700=([org.apache.lucene.geo.XYCircle], float), cast-from-Float32-to-String=([float], java.lang.String), radius/752353700=([org.apache.lucene.geo.XYCircle], float), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2930=org.apache.lucene.geo.XYCircle, var1717=r1, var3738=$r0, var3624=$f1, var1565=$f0, var463=$r2, var2328=$f2, var428=$r3, var3982=$r4}
; {org.apache.lucene.geo.XYCircle=var2930, r1=var1717, $r0=var3738, $f1=var3624, $f0=var1565, $r2=var463, $f2=var2328, $r3=var428, $r4=var3982}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.XYCircle;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CIRCLE(");	$f1 = r1.<org.apache.lucene.geo.XYCircle: float x>;	$f0 = r1.<org.apache.lucene.geo.XYCircle: float y>;	$r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (float,float)>($f1, $f0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("[\u0001,\u0001]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$f2 = r1.<org.apache.lucene.geo.XYCircle: float radius>;	$r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (float)>($f2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(" radius = \u0001");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1