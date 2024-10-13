(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var621 0)
(declare-sort var2850 0)
(declare-sort var1818 0)
(declare-sort var689 0)
(declare-sort var2249 0)
(declare-sort var154 0)
(declare-sort var2361 0)
(declare-sort var330 0)
(declare-sort var1816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _monitor/-683316386 (var621) var2850)
(declare-fun getCategoryExplorerTree/-1244232547 (var2850) var1818)
(declare-fun getExplorerModel/-1532595494 (var1818) var689)
(declare-fun getRootCategoryNode/1610472335 (var689) var2249)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun openXMLDocument/-2130225594 (var621 String) void)
(declare-fun openConfigurationXML/-1788274805 (var621 String) void)
(declare-fun getNDCTextFilter/61500292 (var2850) String)
(declare-fun processLogRecordFilter/734069155 (var621 String String) void)
(declare-fun getLogLevelMenuItems/-1511150576 (var2850) var154)
(declare-fun processLogLevels/2078503746 (var621 var154 String) void)
(declare-fun var2361_getLogLevelColorMap/-1643764391 () var154)
(declare-fun processLogLevelColors/-1578350353 (var621 var154 var154 String) void)
(declare-fun var1816_getLogTableColumns/1590311967 () var330)
(declare-fun processLogTableColumns/756502352 (var621 var330 String) void)
(declare-fun processConfigurationNode/1842039335 (var621 var2249 String) void)
(declare-fun closeConfigurationXML/-442807627 (var621 String) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun store/-1959312947 (var621 String) void)
(declare-const null-var621 var621)
(declare-const var1325 var621) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var1325 null-var621)))
(define-const var3139 var2850 (_monitor/-683316386 var1325)) ; Statement: $r1 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor> 
(assert true)
(define-const var1833 var1818 (getCategoryExplorerTree/-1244232547 var3139)) ; Statement: $r2 = virtualinvoke $r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree getCategoryExplorerTree()>() 
(assert true)
(define-const var3333 var689 (getExplorerModel/-1532595494 var1833)) ; Statement: r3 = virtualinvoke $r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel getExplorerModel()>() 
(assert true)
(define-const var1806 var2249 (getRootCategoryNode/1610472335 var3333)) ; Statement: r4 = virtualinvoke r3.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode getRootCategoryNode()>() 
(define-const var3473 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var3473 2048)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>(int)>(2048) 

(declare-const var3473!1 String)
(declare-const var3488 Int)
(assert true)
;(assert (openXMLDocument/-2130225594 var1325 var3473!1)) ; Statement: specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void openXMLDocument(java.lang.StringBuffer)>($r5) 

(declare-const var1325!1 var621)
(declare-const var3473!2 String)
(assert true)
;(assert (openConfigurationXML/-1788274805 var1325!1 var3473!2)) ; Statement: specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void openConfigurationXML(java.lang.StringBuffer)>($r5) 

(declare-const var1325!2 var621)
(declare-const var3473!3 String)
(define-const var145 var2850 (_monitor/-683316386 var1325!2)) ; Statement: $r6 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor> 
(assert true)
(define-const var2591 String (getNDCTextFilter/61500292 var145)) ; Statement: $r7 = virtualinvoke $r6.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String getNDCTextFilter()>() 
(assert true)
;(assert (processLogRecordFilter/734069155 var1325!2 var2591 var3473!3)) ; Statement: specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void processLogRecordFilter(java.lang.String,java.lang.StringBuffer)>($r7, $r5) 

(declare-const var1325!3 var621)
(declare-const var2591!1 String)
(declare-const var3473!4 String)
(define-const var3339 var2850 (_monitor/-683316386 var1325!3)) ; Statement: $r8 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor> 
(assert true)
(define-const var438 var154 (getLogLevelMenuItems/-1511150576 var3339)) ; Statement: $r9 = virtualinvoke $r8.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.Map getLogLevelMenuItems()>() 
(assert true)
;(assert (processLogLevels/2078503746 var1325!3 var438 var3473!4)) ; Statement: specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void processLogLevels(java.util.Map,java.lang.StringBuffer)>($r9, $r5) 

(declare-const var1325!4 var621)
(declare-const var438!1 var154)
(declare-const var3473!5 String)
(define-const var1615 var2850 (_monitor/-683316386 var1325!4)) ; Statement: $r10 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor> 
(assert true)
(define-const var3740 var154 (getLogLevelMenuItems/-1511150576 var1615)) ; Statement: $r12 = virtualinvoke $r10.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.Map getLogLevelMenuItems()>() 
(define-const var1928 var154 var2361_getLogLevelColorMap/-1643764391) ; Statement: $r11 = staticinvoke <org.apache.log4j.lf5.LogLevel: java.util.Map getLogLevelColorMap()>() 
(assert true)
;(assert (processLogLevelColors/-1578350353 var1325!4 var3740 var1928 var3473!5)) ; Statement: specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void processLogLevelColors(java.util.Map,java.util.Map,java.lang.StringBuffer)>($r12, $r11, $r5) 

(declare-const var1325!5 var621)
(declare-const var3740!1 var154)
(declare-const var1928!1 var154)
(declare-const var3473!6 String)
(define-const var3998 var330 var1816_getLogTableColumns/1590311967) ; Statement: $r13 = staticinvoke <org.apache.log4j.lf5.viewer.LogTableColumn: java.util.List getLogTableColumns()>() 
(assert true)
;(assert (processLogTableColumns/756502352 var1325!5 var3998 var3473!6)) ; Statement: specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void processLogTableColumns(java.util.List,java.lang.StringBuffer)>($r13, $r5) 

(declare-const var1325!6 var621)
(declare-const var3998!1 var330)
(declare-const var3473!7 String)
(assert true)
;(assert (processConfigurationNode/1842039335 var1325!6 var1806 var3473!7)) ; Statement: specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void processConfigurationNode(org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode,java.lang.StringBuffer)>(r4, $r5) 

(declare-const var1325!7 var621)
(declare-const var1806!1 var2249)
(declare-const var3473!8 String)
(assert true)
;(assert (closeConfigurationXML/-442807627 var1325!7 var3473!8)) ; Statement: specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void closeConfigurationXML(java.lang.StringBuffer)>($r5) 

(declare-const var1325!8 var621)
(declare-const var3473!9 String)
(assert true)
(define-const var2533 String (toString/-222306083 var3473!9)) ; Statement: $r14 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (store/-1959312947 var1325!8 var2533)) ; Statement: virtualinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void store(java.lang.String)>($r14) 

(declare-const var1325!9 var621)
(declare-const var2533!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_monitor/-683316386=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager], org.apache.log4j.lf5.viewer.LogBrokerMonitor), getCategoryExplorerTree/-1244232547=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree), getExplorerModel/-1532595494=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree], org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel), getRootCategoryNode/1610472335=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel], org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), openXMLDocument/-2130225594=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager, java.lang.StringBuffer], void), openConfigurationXML/-1788274805=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager, java.lang.StringBuffer], void), getNDCTextFilter/61500292=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), processLogRecordFilter/734069155=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager, java.lang.String, java.lang.StringBuffer], void), getLogLevelMenuItems/-1511150576=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.util.Map), processLogLevels/2078503746=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager, java.util.Map, java.lang.StringBuffer], void), var2361_getLogLevelColorMap/-1643764391=([], java.util.Map), processLogLevelColors/-1578350353=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager, java.util.Map, java.util.Map, java.lang.StringBuffer], void), var1816_getLogTableColumns/1590311967=([], java.util.List), processLogTableColumns/756502352=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager, java.util.List, java.lang.StringBuffer], void), processConfigurationNode/1842039335=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode, java.lang.StringBuffer], void), closeConfigurationXML/-442807627=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager, java.lang.StringBuffer], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String), store/-1959312947=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager, java.lang.String], void)}
; {var621=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var1325=r0, var2850=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var3139=$r1, var1818=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree, var1833=$r2, var689=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel, var3333=r3, var2249=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode, var1806=r4, var3473=$r5, var3488=2048, var145=$r6, var2591=$r7, var3339=$r8, var154=java.util.Map, var438=$r9, var1615=$r10, var3740=$r12, var2361=org.apache.log4j.lf5.LogLevel, var1928=$r11, var330=java.util.List, var1816=org.apache.log4j.lf5.viewer.LogTableColumn, var3998=$r13, var2533=$r14}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var621, r0=var1325, org.apache.log4j.lf5.viewer.LogBrokerMonitor=var2850, $r1=var3139, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree=var1818, $r2=var1833, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel=var689, r3=var3333, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode=var2249, r4=var1806, $r5=var3473, 2048=var3488, $r6=var145, $r7=var2591, $r8=var3339, java.util.Map=var154, $r9=var438, $r10=var1615, $r12=var3740, org.apache.log4j.lf5.LogLevel=var2361, $r11=var1928, java.util.List=var330, org.apache.log4j.lf5.viewer.LogTableColumn=var1816, $r13=var3998, $r14=var2533}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	$r1 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor>;	$r2 = virtualinvoke $r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree getCategoryExplorerTree()>();	r3 = virtualinvoke $r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel getExplorerModel()>();	r4 = virtualinvoke r3.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode getRootCategoryNode()>();	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>(int)>(2048);	specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void openXMLDocument(java.lang.StringBuffer)>($r5);	specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void openConfigurationXML(java.lang.StringBuffer)>($r5);	$r6 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor>;	$r7 = virtualinvoke $r6.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String getNDCTextFilter()>();	specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void processLogRecordFilter(java.lang.String,java.lang.StringBuffer)>($r7, $r5);	$r8 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor>;	$r9 = virtualinvoke $r8.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.Map getLogLevelMenuItems()>();	specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void processLogLevels(java.util.Map,java.lang.StringBuffer)>($r9, $r5);	$r10 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor>;	$r12 = virtualinvoke $r10.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.Map getLogLevelMenuItems()>();	$r11 = staticinvoke <org.apache.log4j.lf5.LogLevel: java.util.Map getLogLevelColorMap()>();	specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void processLogLevelColors(java.util.Map,java.util.Map,java.lang.StringBuffer)>($r12, $r11, $r5);	$r13 = staticinvoke <org.apache.log4j.lf5.viewer.LogTableColumn: java.util.List getLogTableColumns()>();	specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void processLogTableColumns(java.util.List,java.lang.StringBuffer)>($r13, $r5);	specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void processConfigurationNode(org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode,java.lang.StringBuffer)>(r4, $r5);	specialinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void closeConfigurationXML(java.lang.StringBuffer)>($r5);	$r14 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: void store(java.lang.String)>($r14);	return
;block_num 1