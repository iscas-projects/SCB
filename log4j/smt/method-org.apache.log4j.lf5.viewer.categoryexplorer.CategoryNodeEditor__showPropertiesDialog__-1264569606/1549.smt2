(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3158 0)
(declare-sort var1045 0)
(declare-sort var3138 0)
(declare-sort var3710 0)
(declare-sort var1553 0)
(declare-sort var2493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _tree/-743738337 (var3158) var3138)
(declare-fun getDisplayedProperties/-1635513183 (var3158 var1045) var3710)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTitle/-456128196 (var1045) String)
(define-fun toString/-222306083 ((s String)) String s)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1553_showMessageDialog/122806564 (var2493 var3710 String Int) void)
(declare-fun cast-from-var3138-to-var2493 (var3138) var2493)
(declare-const null-var3158 var3158)
(declare-const null-var1045 var1045)
(declare-const var2060 var3158) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor 
(assert (not (= var2060 null-var3158)))
(declare-const var1593 var1045) ; Statement: r1 := @parameter0: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode 
(assert (not (= var1593 null-var1045)))
(define-const var1761 var3138 (_tree/-743738337 var2060)) ; Statement: $r2 = r0.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor: javax.swing.JTree _tree> 
(assert true)
(define-const var3397 var3710 (getDisplayedProperties/-1635513183 var2060 var1593)) ; Statement: $r8 = virtualinvoke r0.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor: java.lang.Object getDisplayedProperties(org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode)>(r1) 
(define-const var1814 String String-init) ; Statement: $r9 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1814)) ; Statement: specialinvoke $r9.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1814!1 String)
(assert true)
(define-const var1421 String (append/1560614132 var1814!1 "Category Properties: ")) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Category Properties: ") 
(declare-const var1814!2 String)
(assert (str.prefixof var1814!1 var1814!2))
(assert true)
(define-const var3355 String (getTitle/-456128196 var1593)) ; Statement: $r4 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: java.lang.String getTitle()>() 
(assert true)
(define-const var114 String (append/1560614132 var1421 var3355)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var1421!1 String)
(assert (str.prefixof var1421 var1421!1))
(assert true)
(define-const var2200 String (toString/-222306083 var114)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var3868 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
;(assert (var1553_showMessageDialog/122806564 (cast-from-var3138-to-var2493 var1761) var3397 var2200 var3868)) ; Statement: staticinvoke <javax.swing.JOptionPane: void showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int)>($r2, $r8, $r7, $i1) 

(declare-const var1761!1 var3138)
(declare-const var3397!1 var3710)
(declare-const var2200!1 String)
(declare-const var3868!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_tree/-743738337=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor], javax.swing.JTree), getDisplayedProperties/-1635513183=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode], java.lang.Object), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getTitle/-456128196=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), cast-from-Int-to-Int=([int], int), var1553_showMessageDialog/122806564=([java.awt.Component, java.lang.Object, java.lang.String, int], void), cast-from-var3138-to-var2493=([javax.swing.JTree], java.awt.Component)}
; {var3158=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor, var2060=r0, var1045=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode, var1593=r1, var3138=javax.swing.JTree, var1761=$r2, var3710=java.lang.Object, var3397=$r8, var1814=$r9, var1421=$r5, var3355=$r4, var114=$r6, var2200=$r7, var3868=$i1, var1553=javax.swing.JOptionPane, var2493=java.awt.Component}
; {org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor=var3158, r0=var2060, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode=var1045, r1=var1593, javax.swing.JTree=var3138, $r2=var1761, java.lang.Object=var3710, $r8=var3397, $r9=var1814, $r5=var1421, $r4=var3355, $r6=var114, $r7=var2200, $i1=var3868, javax.swing.JOptionPane=var1553, java.awt.Component=var2493}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor;	r1 := @parameter0: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode;	$r2 = r0.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor: javax.swing.JTree _tree>;	$r8 = virtualinvoke r0.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor: java.lang.Object getDisplayedProperties(org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode)>(r1);	$r9 = new java.lang.StringBuffer;	specialinvoke $r9.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Category Properties: ");	$r4 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: java.lang.String getTitle()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	$i1 = (int) -1;	staticinvoke <javax.swing.JOptionPane: void showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int)>($r2, $r8, $r7, $i1);	return
;block_num 1