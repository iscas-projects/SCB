(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getType/-354081173 (var1920) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getSubType/397382139 (var1920) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1920 var1920)
(declare-const null-Bool Bool)
(declare-const var302 var1920) ; Statement: r1 := @this: org.apache.poi.openxml4j.opc.internal.ContentType 
(assert (not (= var302 null-var1920)))
(declare-const var1273 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1273 null-Bool)))
(define-const var41 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var41 64)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var41!1 String)
(declare-const var2001 Int)
(assert true)
(define-const var1727 String (getType/-354081173 var302)) ; Statement: $r2 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.internal.ContentType: java.lang.String getType()>() 
(assert true)
;(assert (append/672562846 var41!1 var1727)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var41!2 String)
(assert (= var41!2 (str.++ var41!1 var1727)))
(assert true)
;(assert (append/-1166366385 var41!2 47)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var41!3 String)
(assert (str.prefixof var41!2 var41!3))
(assert true)
(define-const var2283 String (getSubType/397382139 var302)) ; Statement: $r3 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.internal.ContentType: java.lang.String getSubType()>() 
(assert true)
;(assert (append/672562846 var41!3 var2283)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var41!4 String)
(assert (= var41!4 (str.++ var41!3 var2283)))
 ; Statement: if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1273 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2166 String (toString/-2075883882 var41!4)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getType/-354081173=([org.apache.poi.openxml4j.opc.internal.ContentType], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getSubType/397382139=([org.apache.poi.openxml4j.opc.internal.ContentType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1920=org.apache.poi.openxml4j.opc.internal.ContentType, var302=r1, var1273=z0, var41=$r0, var2001=64, var1727=$r2, var2283=$r3, var2166=$r4}
; {org.apache.poi.openxml4j.opc.internal.ContentType=var1920, r1=var302, z0=var1273, $r0=var41, 64=var2001, $r2=var1727, $r3=var2283, $r4=var2166}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.openxml4j.opc.internal.ContentType;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64);	$r2 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.internal.ContentType: java.lang.String getType()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r3 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.internal.ContentType: java.lang.String getSubType()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2