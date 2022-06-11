echo "--------------------simulation start: $(date)--------------------"  
echo "--------------------DATA GENERATION - start: $(date)--------------------" 
mkdir -p data
python data_generate.py --n=8 --env="gridWorld"
python data_generate.py --n=12 --env="gridWorld"
python data_generate.py --n=16 --env="gridWorld"
python data_generate.py --n=8 --env="gridWorld2"
python data_generate.py --n=12 --env="gridWorld2"
python data_generate.py --n=16 --env="gridWorld2"
echo "--------------------TASK1 (FORWARD)- start: $(date)--------------------" 
./run_task1.sh
echo "--------------------TASK2 (FORWARD)- start: $(date)--------------------" 
./run_task2.sh
echo "--------------------TASK1 (BACKWARD) - start: $(date)--------------------" 
./run_task1_traces.sh
echo "--------------------TASK2 (BACKWARD) - start: $(date)--------------------" 
./run_task2_traces.sh
echo "--------------------simulation end: $(date)--------------------" 

