(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3259 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lat/-651297757 (var3259) Float64)
(declare-fun lon/-651297757 (var3259) Float64)
(declare-fun cast-from-Float64-to-String (Float64) String)
(declare-fun radiusMeters/-651297757 (var3259) Float64)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3259 var3259)
(declare-const var3992 var3259) ; Statement: r1 := @this: org.apache.lucene.geo.Circle 
(assert (not (= var3992 null-var3259)))
(define-const var3264 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3264)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3264!1 String)
(assert (= var3264!1 ""))
(assert true)
;(assert (append/672562846 var3264!1 "CIRCLE(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CIRCLE(") 
(declare-const var3264!2 String)
(assert (= var3264!2 (str.++ var3264!1 "CIRCLE(")))
(define-const var3301 Float64 (lat/-651297757 var3992)) ; Statement: $d1 = r1.<org.apache.lucene.geo.Circle: double lat> 
(define-const var1682 Float64 (lon/-651297757 var3992)) ; Statement: $d0 = r1.<org.apache.lucene.geo.Circle: double lon> 
(define-const var1617 String (str.++ "[\u0001,\u0001]" (cast-from-Float64-to-String var3301) (cast-from-Float64-to-String var1682))) ; Statement: $r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (double,double)>($d1, $d0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("[\u0001,\u0001]") 
(assert true)
;(assert (append/672562846 var3264!2 var1617)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3264!3 String)
(assert (= var3264!3 (str.++ var3264!2 var1617)))
(define-const var367 Float64 (radiusMeters/-651297757 var3992)) ; Statement: $d2 = r1.<org.apache.lucene.geo.Circle: double radiusMeters> 
(define-const var1536 String (str.++ " radius = \u0001 meters" (cast-from-Float64-to-String var367))) ; Statement: $r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (double)>($d2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(" radius = \u0001 meters") 
(assert true)
;(assert (append/672562846 var3264!3 var1536)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3264!4 String)
(assert (= var3264!4 (str.++ var3264!3 var1536)))
(assert true)
;(assert (append/-1166366385 var3264!4 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3264!5 String)
(assert (str.prefixof var3264!4 var3264!5))
(assert true)
(define-const var3261 String (toString/-2075883882 var3264!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lat/-651297757=([org.apache.lucene.geo.Circle], double), lon/-651297757=([org.apache.lucene.geo.Circle], double), cast-from-Float64-to-String=([double], java.lang.String), radiusMeters/-651297757=([org.apache.lucene.geo.Circle], double), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3259=org.apache.lucene.geo.Circle, var3992=r1, var3264=$r0, var3301=$d1, var1682=$d0, var1617=$r2, var367=$d2, var1536=$r3, var3261=$r4}
; {org.apache.lucene.geo.Circle=var3259, r1=var3992, $r0=var3264, $d1=var3301, $d0=var1682, $r2=var1617, $d2=var367, $r3=var1536, $r4=var3261}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Circle;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CIRCLE(");	$d1 = r1.<org.apache.lucene.geo.Circle: double lat>;	$d0 = r1.<org.apache.lucene.geo.Circle: double lon>;	$r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (double,double)>($d1, $d0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("[\u0001,\u0001]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$d2 = r1.<org.apache.lucene.geo.Circle: double radiusMeters>;	$r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (double)>($d2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(" radius = \u0001 meters");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1