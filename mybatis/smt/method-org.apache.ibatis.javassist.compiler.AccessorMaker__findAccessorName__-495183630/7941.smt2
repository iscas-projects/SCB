(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3010 0)
(declare-sort var1174 0)
(declare-sort var2777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun uniqueNumber/1168822230 (var3010) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMethod/-264442768 (var1174 String) var2777)
(declare-const null-var3010 var3010)
(declare-const null-var1174 var1174)
(declare-const null-var2777 var2777)
(declare-const var3299 var3010) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.AccessorMaker 
(assert (not (= var3299 null-var3010)))
(declare-const var3625 var1174) ; Statement: r4 := @parameter0: org.apache.ibatis.javassist.bytecode.ClassFile 
(assert (not (= var3625 null-var1174)))
(assert true) ; Non Conditional
(define-const var222 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var222)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var222!1 String)
(assert (= var222!1 ""))
(assert true)
(define-const var0 String (append/672562846 var222!1 "access$")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("access$") 
(declare-const var222!2 String)
(assert (= var222!2 (str.++ var222!1 "access$")))
(define-const var2404 Int (uniqueNumber/1168822230 var3299)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.compiler.AccessorMaker: int uniqueNumber> 
(define-const var3628 Int (+ var2404 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3299!1 var3010)
(assert (not (= var3299!1 null-var3010)))
(assert (= (uniqueNumber/1168822230 var3299!1) var3628)) ; Statement: r1.<org.apache.ibatis.javassist.compiler.AccessorMaker: int uniqueNumber> = $i1 
(assert true)
(define-const var3840 String (append/-1001720160 var0 var2404)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var0!1 String)
(assert (str.prefixof var0 var0!1))
(assert true)
(define-const var3843 String (toString/-2075883882 var3840)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2171 var2777 (getMethod/-264442768 var3625 var3843)) ; Statement: $r5 = virtualinvoke r4.<org.apache.ibatis.javassist.bytecode.ClassFile: org.apache.ibatis.javassist.bytecode.MethodInfo getMethod(java.lang.String)>($r6) 
 ; Statement: if $r5 != null goto $r0 = new java.lang.StringBuilder 
(assert (not (not (= var2171 null-var2777)))) ; Negate: Cond: $r5 != null  
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), uniqueNumber/1168822230=([org.apache.ibatis.javassist.compiler.AccessorMaker], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMethod/-264442768=([org.apache.ibatis.javassist.bytecode.ClassFile, java.lang.String], org.apache.ibatis.javassist.bytecode.MethodInfo)}
; {var3010=org.apache.ibatis.javassist.compiler.AccessorMaker, var3299=r1, var1174=org.apache.ibatis.javassist.bytecode.ClassFile, var3625=r4, var222=$r0, var0=$r2, var2404=$i0, var3628=$i1, var3840=$r3, var3843=$r6, var2777=org.apache.ibatis.javassist.bytecode.MethodInfo, var2171=$r5}
; {org.apache.ibatis.javassist.compiler.AccessorMaker=var3010, r1=var3299, org.apache.ibatis.javassist.bytecode.ClassFile=var1174, r4=var3625, $r0=var222, $r2=var0, $i0=var2404, $i1=var3628, $r3=var3840, $r6=var3843, org.apache.ibatis.javassist.bytecode.MethodInfo=var2777, $r5=var2171}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.AccessorMaker;	r4 := @parameter0: org.apache.ibatis.javassist.bytecode.ClassFile;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("access$");	$i0 = r1.<org.apache.ibatis.javassist.compiler.AccessorMaker: int uniqueNumber>;	$i1 = $i0 + 1;	r1.<org.apache.ibatis.javassist.compiler.AccessorMaker: int uniqueNumber> = $i1;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke r4.<org.apache.ibatis.javassist.bytecode.ClassFile: org.apache.ibatis.javassist.bytecode.MethodInfo getMethod(java.lang.String)>($r6);	if $r5 != null goto $r0 = new java.lang.StringBuilder;	return $r6
;block_num 3