(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3987 0)
(declare-sort var1541 0)
(declare-sort var1278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$reader/-1728311578 (var3987) var1541)
(declare-fun toString/-522406933 (var1278) String)
(declare-fun cast-from-var1541-to-var1278 (var1541) var1278)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3987 var3987)
(declare-const var3009 var3987) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator$4 
(assert (not (= var3009 null-var3987)))
(define-const var1857 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1857)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1857!1 String)
(assert true)
(define-const var1904 String (append/1560614132 var1857!1 "reader [")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reader [") 
(declare-const var1857!2 String)
(assert (str.prefixof var1857!1 var1857!2))
(define-const var3114 var1541 (val$reader/-1728311578 var3009)) ; Statement: $r2 = r1.<org.apache.log4j.xml.DOMConfigurator$4: java.io.Reader val$reader> 
(assert true)
(define-const var696 String (toString/-522406933 (cast-from-var1541-to-var1278 var3114))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1698 String (append/1560614132 var1904 var696)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var1904!1 String)
(assert (str.prefixof var1904 var1904!1))
(assert true)
(define-const var3138 String (append/1560614132 var1698 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(declare-const var1698!1 String)
(assert (str.prefixof var1698 var1698!1))
(assert true)
(define-const var3125 String (toString/-222306083 var3138)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), val$reader/-1728311578=([org.apache.log4j.xml.DOMConfigurator$4], java.io.Reader), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1541-to-var1278=([java.io.Reader], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3987=org.apache.log4j.xml.DOMConfigurator$4, var3009=r1, var1857=$r0, var1904=$r4, var1541=java.io.Reader, var3114=$r2, var1278=java.lang.Object, var696=$r3, var1698=$r5, var3138=$r6, var3125=$r7}
; {org.apache.log4j.xml.DOMConfigurator$4=var3987, r1=var3009, $r0=var1857, $r4=var1904, java.io.Reader=var1541, $r2=var3114, java.lang.Object=var1278, $r3=var696, $r5=var1698, $r6=var3138, $r7=var3125}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator$4;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reader [");	$r2 = r1.<org.apache.log4j.xml.DOMConfigurator$4: java.io.Reader val$reader>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	return $r7
;block_num 1