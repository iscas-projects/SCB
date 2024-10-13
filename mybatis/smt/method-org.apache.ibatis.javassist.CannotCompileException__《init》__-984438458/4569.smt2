(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1431 0)
(declare-sort var2030 0)
(declare-sort var1112 0)
(declare-sort var1532 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-480142003 (var1431 String var1532) void)
(declare-fun cast-from-var2030-to-var1532 (var2030) var1532)
(declare-const null-var1431 var1431)
(declare-const null-var2030 var2030)
(declare-const null-String String)
(declare-const var2855 var1431) ; Statement: r0 := @this: org.apache.ibatis.javassist.CannotCompileException 
(assert (not (= var2855 null-var1431)))
(declare-const var3214 var2030) ; Statement: r5 := @parameter0: java.lang.ClassFormatError 
(assert (not (= var3214 null-var2030)))
(declare-const var3027 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3027 null-String)))
(define-const var134 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var134)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var134!1 String)
(assert (= var134!1 ""))
(assert true)
(define-const var2418 String (append/672562846 var134!1 "invalid class format: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid class format: ") 
(declare-const var134!2 String)
(assert (= var134!2 (str.++ var134!1 "invalid class format: ")))
(assert true)
(define-const var3239 String (append/672562846 var2418 var3027)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2418!1 String)
(assert (= var2418!1 (str.++ var2418 var3027)))
(assert true)
(define-const var617 String (toString/-2075883882 var3239)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-480142003 var2855 var617 (cast-from-var2030-to-var1532 var3214))) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r5) 

(declare-const var2855!1 var1431)
(declare-const var617!1 String)
(declare-const var3214!1 var2030)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-480142003=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String, java.lang.Throwable], void), cast-from-var2030-to-var1532=([java.lang.ClassFormatError], java.lang.Throwable)}
; {var1431=org.apache.ibatis.javassist.CannotCompileException, var2855=r0, var2030=java.lang.ClassFormatError, var3214=r5, var3027=r2, var1112=null_type, var134=$r1, var2418=$r3, var3239=$r4, var617=$r6, var1532=java.lang.Throwable}
; {org.apache.ibatis.javassist.CannotCompileException=var1431, r0=var2855, java.lang.ClassFormatError=var2030, r5=var3214, r2=var3027, null_type=var1112, $r1=var134, $r3=var2418, $r4=var3239, $r6=var617, java.lang.Throwable=var1532}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CannotCompileException;	r5 := @parameter0: java.lang.ClassFormatError;	r2 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid class format: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r5);	return
;block_num 1