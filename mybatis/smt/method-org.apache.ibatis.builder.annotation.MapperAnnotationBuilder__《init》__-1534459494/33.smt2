(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3371 0)
(declare-sort var11 0)
(declare-sort var3770 0)
(declare-sort var1984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3770) void)
(declare-fun cast-from-var3371-to-var3770 (var3371) var3770)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1984-init () var1984)
(declare-fun <init>/-1340479217 (var1984 var11 String) void)
(declare-fun assistant/-1562462879 (var3371) var1984)
(declare-fun configuration/-1562462879 (var3371) var11)
(declare-fun type/-1562462879 (var3371) ClassObject)
(declare-const null-var3371 var3371)
(declare-const null-var11 var11)
(declare-const null-ClassObject ClassObject)
(declare-const var3941 var3371) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var3941 null-var3371)))
(declare-const var2549 var11) ; Statement: r9 := @parameter0: org.apache.ibatis.session.Configuration 
(assert (not (= var2549 null-var11)))
(declare-const var3342 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3342 null-ClassObject)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3371-to-var3770 var3941))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3941!1 var3371)
(define-const var1698 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1698)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1698!1 String)
(assert (= var1698!1 ""))
(assert true)
(define-const var2321 String (getName/-1958580599 var3342)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2117 String (replace/1524665721 var2321 46 47)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var333 String (append/672562846 var1698!1 var2117)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1698!2 String)
(assert (= var1698!2 (str.++ var1698!1 var2117)))
(assert true)
(define-const var1806 String (append/672562846 var333 ".java (best guess)")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java (best guess)") 
(declare-const var333!1 String)
(assert (= var333!1 (str.++ var333 ".java (best guess)")))
(assert true)
(define-const var2051 String (toString/-2075883882 var1806)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1497 var1984 var1984-init) ; Statement: $r8 = new org.apache.ibatis.builder.MapperBuilderAssistant 
(assert true)
;(assert (<init>/-1340479217 var1497 var2549 var2051)) ; Statement: specialinvoke $r8.<org.apache.ibatis.builder.MapperBuilderAssistant: void <init>(org.apache.ibatis.session.Configuration,java.lang.String)>(r9, r7) 

(declare-const var1497!1 var1984)
(declare-const var2549!1 var11)
(declare-const var2051!1 String)
(declare-const var3941!2 var3371)
(assert (not (= var3941!2 null-var3371)))
(assert (= (assistant/-1562462879 var3941!2) var1497!1)) ; Statement: r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> = $r8 
(declare-const var3941!3 var3371)
(assert (not (= var3941!3 null-var3371)))
(assert (= (configuration/-1562462879 var3941!3) var2549!1)) ; Statement: r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> = r9 
(declare-const var3941!4 var3371)
(assert (not (= var3941!4 null-var3371)))
(assert (= (type/-1562462879 var3941!4) var3342)) ; Statement: r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3371-to-var3770=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1984-init=([], org.apache.ibatis.builder.MapperBuilderAssistant), <init>/-1340479217=([org.apache.ibatis.builder.MapperBuilderAssistant, org.apache.ibatis.session.Configuration, java.lang.String], void), assistant/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), type/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Class)}
; {var3371=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var3941=r0, var11=org.apache.ibatis.session.Configuration, var2549=r9, var3342=r2, var3770=java.lang.Object, var1698=$r1, var2321=$r3, var2117=$r4, var333=$r5, var1806=$r6, var2051=r7, var1984=org.apache.ibatis.builder.MapperBuilderAssistant, var1497=$r8}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var3371, r0=var3941, org.apache.ibatis.session.Configuration=var11, r9=var2549, r2=var3342, java.lang.Object=var3770, $r1=var1698, $r3=var2321, $r4=var2117, $r5=var333, $r6=var1806, r7=var2051, org.apache.ibatis.builder.MapperBuilderAssistant=var1984, $r8=var1497}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r9 := @parameter0: org.apache.ibatis.session.Configuration;	r2 := @parameter1: java.lang.Class;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java (best guess)");	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new org.apache.ibatis.builder.MapperBuilderAssistant;	specialinvoke $r8.<org.apache.ibatis.builder.MapperBuilderAssistant: void <init>(org.apache.ibatis.session.Configuration,java.lang.String)>(r9, r7);	r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> = $r8;	r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> = r9;	r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> = r2;	return
;block_num 1