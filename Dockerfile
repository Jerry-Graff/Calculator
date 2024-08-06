FROM python:3.12.3

WORKDIR /calculator_app

COPY hyperion_dev_calc_utils ./hyperion_dev_calc_utils
COPY button.py .
COPY calculator_gui.py .
COPY calculator_logic.py .
COPY run_script.py .

RUN apt-get update && \
    apt-get install -y python3-tk

CMD ["python", "run_script.py"]





