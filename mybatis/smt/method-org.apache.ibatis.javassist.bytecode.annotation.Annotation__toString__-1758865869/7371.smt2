(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1454 0)
(declare-sort var3859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getTypeName/-183261408 (var1454) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun members/1490716157 (var1454) var3859)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1454 var1454)
(declare-const null-var3859 var3859)
(declare-const var2291 var1454) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.annotation.Annotation 
(assert (not (= var2291 null-var1454)))
(define-const var2792 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2792)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2792!1 String)
(assert (= var2792!1 ""))
(assert true)
;(assert (append/-1166366385 var2792!1 64)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64) 
(declare-const var2792!2 String)
(assert (str.prefixof var2792!1 var2792!2))
(assert true)
(define-const var1938 String (getTypeName/-183261408 var2291)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.lang.String getTypeName()>() 
(assert true)
;(assert (append/672562846 var2792!2 var1938)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2792!3 String)
(assert (= var2792!3 (str.++ var2792!2 var1938)))
(define-const var314 var3859 (members/1490716157 var2291)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members> 
 ; Statement: if $r3 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var314 null-var3859)) ; Cond: $r3 == null 
(assert true)
(define-const var3965 String (toString/-2075883882 var2792!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getTypeName/-183261408=([org.apache.ibatis.javassist.bytecode.annotation.Annotation], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), members/1490716157=([org.apache.ibatis.javassist.bytecode.annotation.Annotation], java.util.Map), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1454=org.apache.ibatis.javassist.bytecode.annotation.Annotation, var2291=r1, var2792=$r0, var1938=$r2, var3859=java.util.Map, var314=$r3, var3965=$r4}
; {org.apache.ibatis.javassist.bytecode.annotation.Annotation=var1454, r1=var2291, $r0=var2792, $r2=var1938, java.util.Map=var3859, $r3=var314, $r4=var3965}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.annotation.Annotation;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64);	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.lang.String getTypeName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members>;	if $r3 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2