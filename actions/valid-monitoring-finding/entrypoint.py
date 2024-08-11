import sys
import yaml

def check_hotpoint_in_yaml(file_path):
    try:
        with open(file_path, 'r') as file:
            data = yaml.safe_load(file)

        if 'monitoring' in data and 'apm' in data['env']:
            print("The property 'monitoring.apm' is present in the file.")
        else:
            print("")
            print("Error: The property 'monitoring.apm' is NOT present in the file.")
            print("See https://techdeck.hotmart.co/catalog/default/component/heimdall/docs/findings/nr_without_incident_apm_policy/")
            print("")

            sys.exit(1)

    except FileNotFoundError:
        print(f"Error: File not found at path {file_path}")

    except yaml.YAMLError as exc:
        print(f"Error parsing YAML file: {exc}")
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python entrypoint.py <path_to_yaml_file>")
        sys.exit(1)

    file_path = sys.argv[1]
    check_hotpoint_in_yaml(file_path)