(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1946 0)
(declare-sort var954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTagName/-2105521973 (var1946) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-2007916749 (var954 String) void)
(declare-fun classIndex/-655785610 (var1946) Int)
(declare-fun print/276662251 (var954 Int) void)
(declare-fun nameAndTypeIndex/-655785610 (var1946) Int)
(declare-fun println/261897261 (var954 Int) void)
(declare-const null-var1946 var1946)
(declare-const null-var954 var954)
(declare-const var2239 var1946) ; Statement: r2 := @this: org.apache.ibatis.javassist.bytecode.MemberrefInfo 
(assert (not (= var2239 null-var1946)))
(declare-const var3165 var954) ; Statement: r0 := @parameter0: java.io.PrintWriter 
(assert (not (= var3165 null-var954)))
(define-const var3752 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3752)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3752!1 String)
(assert (= var3752!1 ""))
(assert true)
(define-const var2815 String (getTagName/-2105521973 var2239)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.MemberrefInfo: java.lang.String getTagName()>() 
(assert true)
(define-const var2785 String (append/672562846 var3752!1 var2815)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3752!2 String)
(assert (= var3752!2 (str.++ var3752!1 var2815)))
(assert true)
(define-const var2898 String (append/672562846 var2785 " #")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" #") 
(declare-const var2785!1 String)
(assert (= var2785!1 (str.++ var2785 " #")))
(assert true)
(define-const var274 String (toString/-2075883882 var2898)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-2007916749 var3165 var274)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>($r6) 

(declare-const var3165!1 var954)
(declare-const var274!1 String)
(define-const var3904 Int (classIndex/-655785610 var2239)) ; Statement: $i0 = r2.<org.apache.ibatis.javassist.bytecode.MemberrefInfo: int classIndex> 
(assert true)
;(assert (print/276662251 var3165!1 var3904)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void print(int)>($i0) 

(declare-const var3165!2 var954)
(declare-const var3904!1 Int)
(assert true)
;(assert (print/-2007916749 var3165!2 ", name&type #")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>(", name&type #") 

(declare-const var3165!3 var954)
(declare-const var2055 String)
(define-const var3535 Int (nameAndTypeIndex/-655785610 var2239)) ; Statement: $i1 = r2.<org.apache.ibatis.javassist.bytecode.MemberrefInfo: int nameAndTypeIndex> 
(assert true)
;(assert (println/261897261 var3165!3 var3535)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(int)>($i1) 

(declare-const var3165!4 var954)
(declare-const var3535!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTagName/-2105521973=([org.apache.ibatis.javassist.bytecode.MemberrefInfo], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-2007916749=([java.io.PrintWriter, java.lang.String], void), classIndex/-655785610=([org.apache.ibatis.javassist.bytecode.MemberrefInfo], int), print/276662251=([java.io.PrintWriter, int], void), nameAndTypeIndex/-655785610=([org.apache.ibatis.javassist.bytecode.MemberrefInfo], int), println/261897261=([java.io.PrintWriter, int], void)}
; {var1946=org.apache.ibatis.javassist.bytecode.MemberrefInfo, var2239=r2, var954=java.io.PrintWriter, var3165=r0, var3752=$r1, var2815=$r3, var2785=$r4, var2898=$r5, var274=$r6, var3904=$i0, var2055=", name&type #", var3535=$i1}
; {org.apache.ibatis.javassist.bytecode.MemberrefInfo=var1946, r2=var2239, java.io.PrintWriter=var954, r0=var3165, $r1=var3752, $r3=var2815, $r4=var2785, $r5=var2898, $r6=var274, $i0=var3904, ", name&type #"=var2055, $i1=var3535}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.bytecode.MemberrefInfo;	r0 := @parameter0: java.io.PrintWriter;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.MemberrefInfo: java.lang.String getTagName()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" #");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>($r6);	$i0 = r2.<org.apache.ibatis.javassist.bytecode.MemberrefInfo: int classIndex>;	virtualinvoke r0.<java.io.PrintWriter: void print(int)>($i0);	virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>(", name&type #");	$i1 = r2.<org.apache.ibatis.javassist.bytecode.MemberrefInfo: int nameAndTypeIndex>;	virtualinvoke r0.<java.io.PrintWriter: void println(int)>($i1);	return
;block_num 1