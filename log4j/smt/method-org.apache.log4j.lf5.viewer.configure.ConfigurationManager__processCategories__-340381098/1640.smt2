(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1649 0)
(declare-sort var3988 0)
(declare-sort var832 0)
(declare-sort var1260 0)
(declare-sort var3847 0)
(declare-sort var590 0)
(declare-sort var3722 0)
(declare-sort var3480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _monitor/-683316386 (var1649) var832)
(declare-fun getCategoryExplorerTree/-1244232547 (var832) var1260)
(declare-fun getExplorerModel/-1532595494 (var1260) var3847)
(declare-fun var3988_getElementsByTagName/-1404320328 (var3988 String) var590)
(declare-fun var590_item/-99689391 (var590 Int) var3722)
(declare-fun var3722_getAttributes/1383780881 (var3722) var3480)
(declare-fun getValue/-1790866410 (var1649 var3480 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var590_getLength/224812497 (var590) Int)
(declare-const null-var1649 var1649)
(declare-const null-var3988 var3988)
(declare-const var798 var1649) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var798 null-var1649)))
(declare-const var32 var3988) ; Statement: r4 := @parameter0: org.w3c.dom.Document 
(assert (not (= var32 null-var3988)))
(define-const var1126 var832 (_monitor/-683316386 var798)) ; Statement: $r1 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor> 
(assert true)
(define-const var122 var1260 (getCategoryExplorerTree/-1244232547 var1126)) ; Statement: r2 = virtualinvoke $r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree getCategoryExplorerTree()>() 
(assert true)
(define-const var3922 var3847 (getExplorerModel/-1532595494 var122)) ; Statement: r3 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel getExplorerModel()>() 
(define-const var3066 var590 (var3988_getElementsByTagName/-1404320328 var32 "category")) ; Statement: r5 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.NodeList getElementsByTagName(java.lang.String)>("category") 
(define-const var14 var3722 (var590_item/-99689391 var3066 0)) ; Statement: $r6 = interfaceinvoke r5.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(0) 
(define-const var209 var3480 (var3722_getAttributes/1383780881 var14)) ; Statement: r15 = interfaceinvoke $r6.<org.w3c.dom.Node: org.w3c.dom.NamedNodeMap getAttributes()>() 
(assert true)
(define-const var1543 String (getValue/-1790866410 var798 var209 "name")) ; Statement: $r7 = virtualinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: java.lang.String getValue(org.w3c.dom.NamedNodeMap,java.lang.String)>(r15, "name") 
(assert true)
(define-const var261 Bool (equalsIgnoreCase/-92311102 var1543 "Categories")) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("Categories") 
 ; Statement: if $z0 == 0 goto $z4 = 0 
(assert (not (= (ite var261 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3826 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= z1 = $z4] 
(assert true) ; Non Conditional
(define-const var3260 Bool var3826) ; Statement: z1 = $z4 
(define-const var1383 Int (var590_getLength/224812497 var3066)) ; Statement: $i0 = interfaceinvoke r5.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var1441 Int (- var1383 1)) ; Statement: i1 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < z1 goto return 
(assert (< var1441 (ite var3260 1 0))) ; Cond: i1 < z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_monitor/-683316386=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager], org.apache.log4j.lf5.viewer.LogBrokerMonitor), getCategoryExplorerTree/-1244232547=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree), getExplorerModel/-1532595494=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree], org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel), var3988_getElementsByTagName/-1404320328=([org.w3c.dom.Document, java.lang.String], org.w3c.dom.NodeList), var590_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var3722_getAttributes/1383780881=([org.w3c.dom.Node], org.w3c.dom.NamedNodeMap), getValue/-1790866410=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager, org.w3c.dom.NamedNodeMap, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var590_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var1649=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var798=r0, var3988=org.w3c.dom.Document, var32=r4, var832=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1126=$r1, var1260=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree, var122=r2, var3847=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel, var3922=r3, var590=org.w3c.dom.NodeList, var3066=r5, var3722=org.w3c.dom.Node, var14=$r6, var3480=org.w3c.dom.NamedNodeMap, var209=r15, var1543=$r7, var261=$z0, var3826=$z4, var3260=z1, var1383=$i0, var1441=i1}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var1649, r0=var798, org.w3c.dom.Document=var3988, r4=var32, org.apache.log4j.lf5.viewer.LogBrokerMonitor=var832, $r1=var1126, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree=var1260, r2=var122, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel=var3847, r3=var3922, org.w3c.dom.NodeList=var590, r5=var3066, org.w3c.dom.Node=var3722, $r6=var14, org.w3c.dom.NamedNodeMap=var3480, r15=var209, $r7=var1543, $z0=var261, $z4=var3826, z1=var3260, $i0=var1383, i1=var1441}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	r4 := @parameter0: org.w3c.dom.Document;	$r1 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor>;	r2 = virtualinvoke $r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree getCategoryExplorerTree()>();	r3 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel getExplorerModel()>();	r5 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.NodeList getElementsByTagName(java.lang.String)>("category");	$r6 = interfaceinvoke r5.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(0);	r15 = interfaceinvoke $r6.<org.w3c.dom.Node: org.w3c.dom.NamedNodeMap getAttributes()>();	$r7 = virtualinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: java.lang.String getValue(org.w3c.dom.NamedNodeMap,java.lang.String)>(r15, "name");	$z0 = virtualinvoke $r7.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("Categories");	if $z0 == 0 goto $z4 = 0;	$z4 = 1;	goto [?= z1 = $z4];	z1 = $z4;	$i0 = interfaceinvoke r5.<org.w3c.dom.NodeList: int getLength()>();	i1 = $i0 - 1;	if i1 < z1 goto return;	return
;block_num 5