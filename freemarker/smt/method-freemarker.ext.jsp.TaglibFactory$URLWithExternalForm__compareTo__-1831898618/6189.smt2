(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3916 0)
(declare-sort var188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getExternalForm/-107605618 (var3916) String)
(declare-fun cast-from-var188-to-var3916 (var188) var3916)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var3916 var3916)
(declare-const null-var188 var188)
(declare-const var2687 var3916) ; Statement: r0 := @this: freemarker.ext.jsp.TaglibFactory$URLWithExternalForm 
(assert (not (= var2687 null-var3916)))
(declare-const var1068 var188) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1068 null-var188)))
(assert true)
(define-const var1743 String (getExternalForm/-107605618 var2687)) ; Statement: $r4 = virtualinvoke r0.<freemarker.ext.jsp.TaglibFactory$URLWithExternalForm: java.lang.String getExternalForm()>() 
(define-const var2275 var3916 (cast-from-var188-to-var3916 var1068)) ; Statement: $r2 = (freemarker.ext.jsp.TaglibFactory$URLWithExternalForm) r1 
(assert true)
(define-const var3530 String (getExternalForm/-107605618 var2275)) ; Statement: $r3 = virtualinvoke $r2.<freemarker.ext.jsp.TaglibFactory$URLWithExternalForm: java.lang.String getExternalForm()>() 
(assert true)
(define-const var3112 Int (compareTo/1411385946 var1743 var3530)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3) 
(assert (let ((this<other (str.< var1743 var3530)) (this<=other (str.<= var1743 var3530)) (compareRes (compareTo/1411385946 var1743 var3530))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getExternalForm/-107605618=([freemarker.ext.jsp.TaglibFactory$URLWithExternalForm], java.lang.String), cast-from-var188-to-var3916=([java.lang.Object], freemarker.ext.jsp.TaglibFactory$URLWithExternalForm), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var3916=freemarker.ext.jsp.TaglibFactory$URLWithExternalForm, var2687=r0, var188=java.lang.Object, var1068=r1, var1743=$r4, var2275=$r2, var3530=$r3, var3112=$i0}
; {freemarker.ext.jsp.TaglibFactory$URLWithExternalForm=var3916, r0=var2687, java.lang.Object=var188, r1=var1068, $r4=var1743, $r2=var2275, $r3=var3530, $i0=var3112}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.ext.jsp.TaglibFactory$URLWithExternalForm;	r1 := @parameter0: java.lang.Object;	$r4 = virtualinvoke r0.<freemarker.ext.jsp.TaglibFactory$URLWithExternalForm: java.lang.String getExternalForm()>();	$r2 = (freemarker.ext.jsp.TaglibFactory$URLWithExternalForm) r1;	$r3 = virtualinvoke $r2.<freemarker.ext.jsp.TaglibFactory$URLWithExternalForm: java.lang.String getExternalForm()>();	$i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3);	return $i0
;block_num 1