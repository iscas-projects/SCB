(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3015 0)
(declare-sort var3797 0)
(declare-sort var347 0)
(declare-sort var3550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var347_isSerializable/-978011101 (var3015) Bool)
(declare-fun var3550-init () var3550)
(declare-fun <init>/57255855 (var3550 var3015 String var3015) void)
(declare-fun setModifiers/1981766487 (var3550 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var347_calculateDefault/-1242687403 (var3015) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addField/723113265 (var3015 var3550 String) void)
(declare-const null-var3015 var3015)
(declare-const null-var3797 var3797)
(declare-const var3015-longType var3015)
(declare-const var1040 var3015) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1040 null-var3015)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2338 var3797) ; Statement: $r1 := @caughtexception 
(assert (not (= var2338 null-var3797)))
(define-const var304 Bool (var347_isSerializable/-978011101 var1040)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.javassist.SerialVersionUID: boolean isSerializable(org.apache.ibatis.javassist.CtClass)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = new org.apache.ibatis.javassist.CtField 
(assert (not (= (ite var304 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2907 var3550 var3550-init) ; Statement: $r2 = new org.apache.ibatis.javassist.CtField 
(define-const var2012 var3015 var3015-longType) ; Statement: $r3 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass longType> 
(assert true)
;(assert (<init>/57255855 var2907 var2012 "serialVersionUID" var1040)) ; Statement: specialinvoke $r2.<org.apache.ibatis.javassist.CtField: void <init>(org.apache.ibatis.javassist.CtClass,java.lang.String,org.apache.ibatis.javassist.CtClass)>($r3, "serialVersionUID", r0) 

(declare-const var2907!1 var3550)
(declare-const var2012!1 var3015)
(declare-const var1918 String)
(declare-const var1040!1 var3015)
(assert true)
;(assert (setModifiers/1981766487 var2907!1 26)) ; Statement: virtualinvoke $r2.<org.apache.ibatis.javassist.CtField: void setModifiers(int)>(26) 

(declare-const var2907!2 var3550)
(declare-const var3922 Int)
(define-const var3853 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3853)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3853!1 String)
(assert (= var3853!1 ""))
(define-const var3644 Int (var347_calculateDefault/-1242687403 var1040!1)) ; Statement: $l0 = staticinvoke <org.apache.ibatis.javassist.SerialVersionUID: long calculateDefault(org.apache.ibatis.javassist.CtClass)>(r0) 
(assert true)
(define-const var1206 String (append/-901862667 var3853!1 var3644)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3853!2 String)
(assert (str.prefixof var3853!1 var3853!2))
(assert true)
(define-const var1157 String (append/672562846 var1206 "L")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("L") 
(declare-const var1206!1 String)
(assert (= var1206!1 (str.++ var1206 "L")))
(assert true)
(define-const var1266 String (toString/-2075883882 var1157)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addField/723113265 var1040!1 var2907!2 var1266)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: void addField(org.apache.ibatis.javassist.CtField,java.lang.String)>($r2, $r7) 

(declare-const var1040!2 var3015)
(declare-const var2907!3 var3550)
(declare-const var1266!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var347_isSerializable/-978011101=([org.apache.ibatis.javassist.CtClass], boolean), var3550-init=([], org.apache.ibatis.javassist.CtField), <init>/57255855=([org.apache.ibatis.javassist.CtField, org.apache.ibatis.javassist.CtClass, java.lang.String, org.apache.ibatis.javassist.CtClass], void), setModifiers/1981766487=([org.apache.ibatis.javassist.CtField, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var347_calculateDefault/-1242687403=([org.apache.ibatis.javassist.CtClass], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addField/723113265=([org.apache.ibatis.javassist.CtClass, org.apache.ibatis.javassist.CtField, java.lang.String], void)}
; {var3015=org.apache.ibatis.javassist.CtClass, var1040=r0, var3797=org.apache.ibatis.javassist.NotFoundException, var2338=$r1, var347=org.apache.ibatis.javassist.SerialVersionUID, var304=$z0, var3550=org.apache.ibatis.javassist.CtField, var2907=$r2, var2012=$r3, var1918="serialVersionUID", var3922=26, var3853=$r4, var3644=$l0, var1206=$r5, var1157=$r6, var1266=$r7}
; {org.apache.ibatis.javassist.CtClass=var3015, r0=var1040, org.apache.ibatis.javassist.NotFoundException=var3797, $r1=var2338, org.apache.ibatis.javassist.SerialVersionUID=var347, $z0=var304, org.apache.ibatis.javassist.CtField=var3550, $r2=var2907, $r3=var2012, "serialVersionUID"=var1918, 26=var3922, $r4=var3853, $l0=var3644, $r5=var1206, $r6=var1157, $r7=var1266}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.CtClass;	$r1 := @caughtexception;	$z0 = staticinvoke <org.apache.ibatis.javassist.SerialVersionUID: boolean isSerializable(org.apache.ibatis.javassist.CtClass)>(r0);	if $z0 != 0 goto $r2 = new org.apache.ibatis.javassist.CtField;	$r2 = new org.apache.ibatis.javassist.CtField;	$r3 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass longType>;	specialinvoke $r2.<org.apache.ibatis.javassist.CtField: void <init>(org.apache.ibatis.javassist.CtClass,java.lang.String,org.apache.ibatis.javassist.CtClass)>($r3, "serialVersionUID", r0);	virtualinvoke $r2.<org.apache.ibatis.javassist.CtField: void setModifiers(int)>(26);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$l0 = staticinvoke <org.apache.ibatis.javassist.SerialVersionUID: long calculateDefault(org.apache.ibatis.javassist.CtClass)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("L");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: void addField(org.apache.ibatis.javassist.CtField,java.lang.String)>($r2, $r7);	return
;block_num 3