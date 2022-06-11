echo "--------------------simulation start: $(date)--------------------"  
echo "--------------------MC - start: $(date)--------------------" 
./run_MC.sh
echo "--------------------TASK1 - start: $(date)--------------------" 
./run_task1.sh
echo "--------------------TASK2 - start: $(date)--------------------" 
./run_task2.sh
echo "--------------------simulation end: $(date)--------------------" 
