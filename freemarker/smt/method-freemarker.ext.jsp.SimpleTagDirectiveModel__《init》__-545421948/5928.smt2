(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2669 0)
(declare-sort var3749 0)
(declare-sort var3469 0)
(declare-sort var651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var651!class ClassObject)
(declare-fun <init>/1021194697 (var3469 String ClassObject) void)
(declare-fun cast-from-var2669-to-var3469 (var2669) var3469)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-var2669 var2669)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3889 var2669) ; Statement: r0 := @this: freemarker.ext.jsp.SimpleTagDirectiveModel 
(assert (not (= var3889 null-var2669)))
(declare-const var966 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var966 null-String)))
(declare-const var3553 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3553 null-ClassObject)))
(assert true)
;(assert (<init>/1021194697 (cast-from-var2669-to-var3469 var3889) var966 var3553)) ; Statement: specialinvoke r0.<freemarker.ext.jsp.JspTagModelBase: void <init>(java.lang.String,java.lang.Class)>(r1, r2) 

(declare-const var3889!1 var2669)
(declare-const var966!1 String)
(declare-const var3553!1 ClassObject)
(define-const var2569 ClassObject var651!class) ; Statement: $r3 = class "Ljavax/servlet/jsp/tagext/SimpleTag;" 
(assert true)
(define-const var1965 Bool (isAssignableFrom/-1028998700 var2569 var3553!1)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r2) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1965 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1021194697=([freemarker.ext.jsp.JspTagModelBase, java.lang.String, java.lang.Class], void), cast-from-var2669-to-var3469=([freemarker.ext.jsp.SimpleTagDirectiveModel], freemarker.ext.jsp.JspTagModelBase), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var2669=freemarker.ext.jsp.SimpleTagDirectiveModel, var3889=r0, var966=r1, var3749=null_type, var3553=r2, var3469=freemarker.ext.jsp.JspTagModelBase, var651=javax.servlet.jsp.tagext.SimpleTag, var2569=$r3, var1965=$z0}
; {freemarker.ext.jsp.SimpleTagDirectiveModel=var2669, r0=var3889, r1=var966, null_type=var3749, r2=var3553, freemarker.ext.jsp.JspTagModelBase=var3469, javax.servlet.jsp.tagext.SimpleTag=var651, $r3=var2569, $z0=var1965}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.ext.jsp.SimpleTagDirectiveModel;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Class;	specialinvoke r0.<freemarker.ext.jsp.JspTagModelBase: void <init>(java.lang.String,java.lang.Class)>(r1, r2);	$r3 = class "Ljavax/servlet/jsp/tagext/SimpleTag;";	$z0 = virtualinvoke $r3.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r2);	if $z0 != 0 goto return;	return
;block_num 2